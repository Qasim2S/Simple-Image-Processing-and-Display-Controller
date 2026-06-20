module ipdc (                       //Don't modify interface
	input         i_clk,
	input         i_rst_n,
	input         i_op_valid,
	input  [ 3:0] i_op_mode,
    output        o_op_ready,
	input         i_in_valid,
	input  [23:0] i_in_data,
	output        o_in_ready,
	output        o_out_valid,
	output [23:0] o_out_data
);

// ---------------------------------------------------------------------------
// Wires and Registers
// ---------------------------------------------------------------------------
// ---- Add your own wires and registers here if needed ---- //

parameter IDLE        = 3'd0,
          FETCH = 3'd1,
	  DECODE = 3'd2,
	  EXECUTION     = 3'd3,
	  MEM_ACCESS = 3'd4,
	  WRITEBACK = 3'd5,
	  TERMINATE = 3'd6;
          
reg [4:0] state, next_state;


reg [7:0] images_loaded, YCbCr_idx;

reg [7:0] red   [0:255]; // + 16 to get next row
reg [7:0] green [0:255];
reg [7:0] blue  [0:255];

reg o_in_ready_r, o_out_valid_r,o_in_ready_w, o_out_valid_w, o_op_ready_w, o_op_ready_r;

reg [23:0] o_out_data_r;

reg [7:0] red_temp   [0:8];
reg [7:0] green_temp [0:8];
reg [7:0] blue_temp  [0:8];
wire [7:0] red_median, green_median, blue_median;

reg red_census [0:7];
reg green_census [0:7];
reg blue_census [0:7];
wire [7:0] red_census_f, green_census_f, blue_census_f;

wire [7:0] Y_Out, Cb_Out, Cr_Out;
wire signed [11:0] Y_full, Cb_full, Cr_full;

reg [ 3:0] op_mode_store;
reg alu_en;

reg [8:0] filtering_reg [0:2];
reg [3:0] filter_idx;

reg [3:0] origin_row, origin_column;
reg [3:0] origin_row_shift, origin_column_shift;

reg [1:0] image_size_r, image_size_w; // 0 = 16x16, 1 = 8x8, 2 = 4x4
reg [4:0] display_dim;    // 16, 8, or 4      
reg [3:0] disp_row, disp_col; 
reg [2:0] disp_row_cnt, disp_col_cnt;

reg [1:0] scale_lvl;

wire [2:0] disp_mat; 

wire [7:0] matrix_loc;

//wire [3:0] img_row, img_col;
wire [3:0] step; //4, 2, 1

// ---------------------------------------------------------------------------
// Continuous Assignment
// ---------------------------------------------------------------------------
// ---- Add your own wire data assignments here if needed ---- //
assign disp_mat = (image_size_r == 0) ? 4 : (image_size_r == 1) ? 2 : 1;

assign step = 4'd1 << image_size_r;

assign o_op_ready = o_op_ready_r;
assign o_in_ready = o_in_ready_r;
assign o_out_valid = o_out_valid_r;

assign o_out_data = o_out_data_r;

assign matrix_loc = {disp_row, 4'd0} + disp_col;

assign red_median = find_median(red_temp[0],  red_temp[1],  red_temp[2],
                            red_temp[3],  red_temp[4],  red_temp[5],
                            red_temp[6],  red_temp[7],  red_temp[8]);

assign green_median = find_median(green_temp[0], green_temp[1], green_temp[2],
                            green_temp[3], green_temp[4], green_temp[5],
                            green_temp[6], green_temp[7], green_temp[8]);

assign blue_median = find_median(blue_temp[0],  blue_temp[1],  blue_temp[2],
                            blue_temp[3],  blue_temp[4],  blue_temp[5],
                            blue_temp[6],  blue_temp[7],  blue_temp[8]);


assign Y_full  = ({4'b0, red[matrix_loc]} * 2) + ({4'b0, green[matrix_loc]} * 5);

assign Cb_full = 12'sd1024 - ({4'b0, red  [matrix_loc]}) - ({4'b0, green[matrix_loc]} * 2) + ({4'b0, blue[matrix_loc]} * 4);

assign Cr_full = 12'sd1024 + ({4'b0, red  [matrix_loc]} * 4) - {4'b0, green[matrix_loc]} * 3 - ({4'b0, blue[matrix_loc]});


assign Y_Out  = (Y_full  + 12'sd4) >> 3;
assign Cb_Out = (Cb_full + 12'sd4) >> 3;
assign Cr_Out = (Cr_full + 12'sd4) >> 3;

assign red_census_f = {red_census[0], red_census[1], red_census[2], red_census[3], red_census[4], red_census[5], red_census[6], red_census[7]};
assign green_census_f = {green_census[0], green_census[1], green_census[2], green_census[3], green_census[4], green_census[5], green_census[6], green_census[7]};
assign blue_census_f = {blue_census[0], blue_census[1], blue_census[2], blue_census[3], blue_census[4], blue_census[5], blue_census[6], blue_census[7]};



// ---------------------------------------------------------------------------
// Combinational Blocks
// ---------------------------------------------------------------------------
// ---- Write your conbinational block design here ---- //

always@(*) begin //ALU 
    
    origin_row_shift    = 4'd0;
    origin_column_shift = 4'd0;
    image_size_w = 2'd0;

    if (alu_en) begin
	case (op_mode_store)
	   4'b000: begin //load image
		
	   end
	   4'b0100: begin // shift right
		if (origin_column + (disp_mat * step) > 15)
		origin_column_shift = origin_column;
		else
		origin_column_shift = origin_column + step;
		end

	   4'b0101: begin // shift left
		if (origin_column == 0)
		origin_column_shift = origin_column;
		else
		origin_column_shift = origin_column - step;
	   end

	   4'b0110: begin // shift up
		if (origin_row == 0)
		origin_row_shift = origin_row;
		else
		origin_row_shift = origin_row - step;
	   end

		4'b0111: begin // shift down
		if (origin_row + (disp_mat * step) > 15)
		origin_row_shift = origin_row;
		else
		origin_row_shift = origin_row + step;
	   end
	   4'b1000: begin
		if (image_size_r < 2'd2) //scale down
			image_size_w = image_size_r + 2'd1;
		else
			image_size_w = image_size_r;
		
	   end
	   4'b1001: begin  //scale up
		if (image_size_r > 2'd0)
			image_size_w = image_size_r - 2'd1;
		else
			image_size_w = image_size_r;
		
           end
	   4'b1100: begin //median filtering
		
	   end
	   4'b1101: begin // YCbCr output
		
	   end
	   4'b1110: begin
		
	   end
	   4'b1111: begin
	   end	   
	default: begin
	end
	endcase

   end
end

//FSM

always@(*) begin
	case (state) 
	    IDLE:       next_state = FETCH;
	    FETCH:      next_state = DECODE;
	    DECODE:     next_state = EXECUTION;
	    EXECUTION: begin
		if (op_mode_store == 4'b0000) begin
			next_state = (images_loaded == 8'd255 && i_in_valid) ? MEM_ACCESS : EXECUTION;
		end else begin 
			next_state = MEM_ACCESS;
		end

	    end
	    MEM_ACCESS: begin
		 if (op_mode_store == 4'b0000) begin
		 	next_state = WRITEBACK;
		end else begin
			next_state = (disp_row_cnt == disp_mat-1 && disp_col_cnt == disp_mat-1) ? WRITEBACK : MEM_ACCESS;
		end
	    end
	    WRITEBACK:  next_state = FETCH;
	    TERMINATE: next_state = TERMINATE;
	    
	    default:    next_state = IDLE;
	endcase
end

function [7:0] get_pixel; 
    input signed [4:0] row;
    input signed [4:0] column;
    input [1:0] colour;
begin
    if (row < 0 || row > 15 || column < 0 || column > 15)
        get_pixel = 8'd0;
    else
        case (colour)
            2'd2: get_pixel = red  [{row[3:0],4'd0} + column[3:0]];  // R
            2'd1: get_pixel = green[{row[3:0],4'd0} + column[3:0]];  // G
            2'd0: get_pixel = blue [{row[3:0],4'd0} + column[3:0]];  // B
            default: get_pixel = 8'd0;
        endcase
end
endfunction

function census_transform;
    input signed [4:0] row;
    input signed [4:0] column;
    input [3:0] origin_row;
    input [3:0] origin_column;
    input [1:0] colour;
begin
    if (row < 0 || row > 15 || column < 0 || column > 15)
        census_transform = 1'd0;
    else
        case (colour)
            2'd2: census_transform = (red[{row[3:0],4'd0} + column[3:0]] > red[{origin_row, 4'd0} + origin_column]) ? 1'd1 : 1'd0 ;  // R
            2'd1: census_transform = (green[{row[3:0],4'd0} + column[3:0]] > green[{origin_row, 4'd0} + origin_column]) ? 1'd1 : 1'd0 ;  // G
            2'd0: census_transform = (blue[{row[3:0],4'd0} + column[3:0]] > blue[{origin_row, 4'd0} + origin_column]) ? 1'd1 : 1'd0 ;  // B
            default: census_transform = 8'd0;
        endcase
end
endfunction

//FSM
integer i;
always@(*) begin
	// default values
	//i_op_valid = 0;
	o_op_ready_w = 0;
	o_in_ready_w = 0;
	o_out_valid_w = 0;
	alu_en       = 0;

	for (i = 0; i < 9; i = i + 1) begin
		red_temp[i]   = 8'd0;
		green_temp[i] = 8'd0;
		blue_temp[i]  = 8'd0;
    	end

	case (state)
	    IDLE: begin
		o_op_ready_w = 1;
	    end
	    FETCH: begin
	    end
	    DECODE: begin	
		
	    end
            EXECUTION: begin
		//i_op_valid = 1;
		alu_en = 1;
		if (op_mode_store == 4'b0000) begin 
			o_in_ready_w = 1'd1;
		end
		
	    end
	    MEM_ACCESS: begin
		if (op_mode_store != 4'd0000) o_out_valid_w = 1'd1;

		if (op_mode_store == 4'b1100) begin

			red_temp[0] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, 2);
			red_temp[1] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})  , 2);
			red_temp[2] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step, 2);
			red_temp[3] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, 2);
			red_temp[4] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})  , 2);
			red_temp[5] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, 2);
			red_temp[6] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, 2);
			red_temp[7] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})  , 2);
			red_temp[8] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step, 2);

			green_temp[0] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, 1);
			green_temp[1] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})  , 1);
			green_temp[2] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step, 1);
			green_temp[3] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, 1);
			green_temp[4] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})  , 1);
			green_temp[5] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, 1);
			green_temp[6] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, 1);
			green_temp[7] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})  , 1);
			green_temp[8] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step, 1);

			blue_temp[0] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, 0);
			blue_temp[1] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})  , 0);
			blue_temp[2] = get_pixel($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step, 0);
			blue_temp[3] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, 0);
			blue_temp[4] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})  , 0);
			blue_temp[5] = get_pixel($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, 0);
			blue_temp[6] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, 0);
			blue_temp[7] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})  , 0);
			blue_temp[8] = get_pixel($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step, 0);

		end

		if (op_mode_store == 4'b1110) begin

		red_census[0] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 2);
		red_census[1] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col}) , disp_row, disp_col , 2);
		red_census[2] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step , disp_row, disp_col, 2);
		red_census[3] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, disp_row, disp_col, 2);
		red_census[7] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step , disp_row, disp_col , 2);
		red_census[4] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, disp_row, disp_col, 2);
		red_census[5] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 2);
		red_census[6] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col}) , disp_row, disp_col , 2);
		
		green_census[0] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 1);
		green_census[1] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col}) , disp_row, disp_col , 1);
		green_census[2] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step, disp_row, disp_col, 1);
		green_census[3] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, disp_row, disp_col, 1);
		green_census[7] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step , disp_row, disp_col , 1);
		green_census[4] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, disp_row, disp_col, 1);
		green_census[5] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 1);
		green_census[6] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col}) , disp_row, disp_col , 1);

		blue_census[0] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 0);
		blue_census[1] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col}) , disp_row, disp_col , 0);
		blue_census[2] = census_transform($signed({1'b0, disp_row})-step, $signed({1'b0, disp_col})+step, disp_row, disp_col, 0);
		blue_census[3] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})-step, disp_row, disp_col, 0);
		blue_census[7] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})+step , disp_row, disp_col , 0);
		blue_census[4] = census_transform($signed({1'b0, disp_row})  , $signed({1'b0, disp_col})+step, disp_row, disp_col, 0);
		blue_census[5] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col})-step, disp_row, disp_col, 0);
		blue_census[6] = census_transform($signed({1'b0, disp_row})+step, $signed({1'b0, disp_col}) , disp_row, disp_col , 0);
			

		end
	    end
            WRITEBACK: begin
		o_op_ready_w = 1;
	    end
	    TERMINATE: begin

		//o_status_valid_w = 1;
	    end
	endcase
end

function [7:0] find_median; 
    input [7:0] in0,in1,in2,in3,in4,in5,in6,in7,in8;
    reg [7:0] s0,s1,s2,s3,s4,s5,s6,s7,s8;
    reg [7:0] tmp;
begin
    s0=in0; s1=in1; s2=in2;
    s3=in3; s4=in4; s5=in5;
    s6=in6; s7=in7; s8=in8;

    if(s0>s1)begin tmp=s0;s0=s1;s1=tmp;end
    if(s3>s4)begin tmp=s3;s3=s4;s4=tmp;end
    if(s6>s7)begin tmp=s6;s6=s7;s7=tmp;end

    if(s1>s2)begin tmp=s1;s1=s2;s2=tmp;end
    if(s4>s5)begin tmp=s4;s4=s5;s5=tmp;end
    if(s7>s8)begin tmp=s7;s7=s8;s8=tmp;end

    if(s0>s1)begin tmp=s0;s0=s1;s1=tmp;end
    if(s3>s4)begin tmp=s3;s3=s4;s4=tmp;end
    if(s6>s7)begin tmp=s6;s6=s7;s7=tmp;end

    if(s0>s3)begin tmp=s0;s0=s3;s3=tmp;end
    if(s3>s6)begin tmp=s3;s3=s6;s6=tmp;end
    if(s0>s3)begin tmp=s0;s0=s3;s3=tmp;end
    if(s1>s4)begin tmp=s1;s1=s4;s4=tmp;end
    if(s4>s7)begin tmp=s4;s4=s7;s7=tmp;end
    if(s1>s4)begin tmp=s1;s1=s4;s4=tmp;end
    if(s2>s5)begin tmp=s2;s2=s5;s5=tmp;end
    if(s5>s8)begin tmp=s5;s5=s8;s8=tmp;end
    if(s2>s5)begin tmp=s2;s2=s5;s5=tmp;end

    if(s1>s2)begin tmp=s1;s1=s2;s2=tmp;end
    if(s3>s4)begin tmp=s3;s3=s4;s4=tmp;end  
    if(s4>s5)begin tmp=s4;s4=s5;s5=tmp;end
    if(s3>s4)begin tmp=s3;s3=s4;s4=tmp;end  
    if(s6>s7)begin tmp=s6;s6=s7;s7=tmp;end
    if(s2>s6)begin tmp=s2;s2=s6;s6=tmp;end
    if(s4>s6)begin tmp=s4;s4=s6;s6=tmp;end
    if(s2>s4)begin tmp=s2;s2=s4;s4=tmp;end

    find_median = s4;
end
endfunction


// ---------------------------------------------------------------------------
// Sequential Block
// ---------------------------------------------------------------------------
// ---- Write your sequential block design here ---- //

always@(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin 
	images_loaded <= 0;
	state <= IDLE;
	origin_row <= 0;
	origin_column <= 0;
	image_size_r <= 0;

	disp_row <= 0;
	disp_col <= 0;
	disp_row_cnt <= 0; 
	disp_col_cnt <= 0;
    end else begin

	if (state == FETCH) begin
		disp_row_cnt <= 0; 
		disp_col_cnt <= 0;
	end

	if (state == EXECUTION && (op_mode_store == 4'b1000 || op_mode_store == 4'b1001)) begin
		//$display("scaling");
		image_size_r <= image_size_w;
	end

	state <= next_state;
	o_op_ready_r <= o_op_ready_w;
	o_in_ready_r <= o_in_ready_w;
	o_out_valid_r <= o_out_valid_w;

	if (i_op_valid) begin
		//$display ("op_mode: %b", i_op_mode);
		op_mode_store <= i_op_mode;
	end

	if ((op_mode_store == 4'b0110 || op_mode_store == 4'b0111) && state == EXECUTION) begin
		//$display ("origin row %d",origin_row_shift);
		origin_row <= origin_row_shift;
		disp_row <= origin_row_shift;
	end

	if ((op_mode_store == 4'b0100 || op_mode_store == 4'b0101)  && state == EXECUTION) begin
		//$display ("origin col %d",origin_column_shift);
		origin_column <= origin_column_shift;
		disp_col <= origin_column_shift;
	end

	if (state == WRITEBACK) begin
		disp_col <= origin_column;
		disp_row <= origin_row;
	end

	
	if (state == EXECUTION && i_in_valid && op_mode_store == 4'b0000) begin
		//$display("storing");
		red[images_loaded] <= i_in_data[23:16];
		green[images_loaded] <= i_in_data[15:8];
		blue[images_loaded] <= i_in_data[7:0];
		images_loaded <= images_loaded+1;
	end

	

	if (state == MEM_ACCESS && op_mode_store != 4'b0000) begin
		//$display 
		if (op_mode_store == 4'b1100) begin
			//$display("median row %d col %d", disp_row, disp_col);
			
			o_out_data_r <= {red_median, green_median, blue_median}; 
		end else if (op_mode_store == 4'b1101) begin
			
			o_out_data_r <= {Y_Out, Cb_Out, Cr_Out};
		
		end else if (op_mode_store == 4'b1110) begin 
			
			o_out_data_r <= {red_census_f, green_census_f, blue_census_f};
		
		end else begin
			o_out_data_r <= {red[matrix_loc], green[matrix_loc], blue[matrix_loc]};
		end

		if (disp_col_cnt == disp_mat -1) begin
			disp_col <= origin_column;
			disp_col_cnt <= 0;
			disp_row <= disp_row + step;
			disp_row_cnt <= disp_row_cnt + 1;
		end else begin
			disp_col <= disp_col + step;

			disp_col_cnt <= disp_col_cnt + 1; 
		
		end 
	end

    end

	    
end

endmodule
