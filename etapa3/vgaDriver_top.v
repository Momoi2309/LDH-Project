
module vgaDriver_top (
input	 clk_i  ,   // clock input, 50MHz
input	 reset_i,	// reset active high
input    switch1,
input    switch2,
output   hSync_o,	// Horizontal sync video output
output   vSync_o,	// vertical sync video output
output   red_o  ,	// red video output
output   green_o,	// green video output
output   blue_o     // blue video output

);
wire [4:0] internal_red_o  ; 
wire [5:0] internal_green_o;
wire [4:0] internal_blue_o ;

wire [2:0] rgb1;
wire [2:0] rgb2;
reg  [2:0] rgb;
wire [9:0] column;
wire [8:0] row;



assign red_o   = internal_red_o  [4];
assign green_o = internal_green_o[5];
assign blue_o  = internal_blue_o [4];
// code





vgaDriver i_vgaDriver(
  .clk_i     (clk_i                 ),	// clock input, 50MHz
  .reset_i   (reset_i               ),	// reset active high
  
 // .rgb_i     (16'b00000_111111_10000),	// pixel colour input (R[4:0], G[5:0], B[4:0])  [15:0]
 
  .rgb_i	 ({rgb[2],4'b0000,rgb[1],5'b00000,rgb[0],4'b0000}),
  .row_o     (row 	                ),	// 
  .column_o  (column                ),	// 
  .red_o     (internal_red_o        ),	// red video output                             [4:0] 
  .green_o   (internal_green_o      ),	// green video output                           [5:0] 
  .blue_o    (internal_blue_o       ),	// blue video output                            [4:0] 
  .hSync_o   (hSync_o               ),	// Horizontal sync video output
  .vSync_o   (vSync_o               )		// vertical sync video output
);

pattgen1 i_pattgen1(
  .rgb_o 	(rgb1),
  .row_i 	(row),
  .column_i	(column)
);

pattgen2 i_pattgen2(
  .rgb_o 	(rgb2),
  .row_i 	(row),
  .column_i	(column)
);


always @(*)
if 
  (switch2 == 1) rgb <= rgb1 ^ rgb2; // ^ -- XOR
else if
	(switch1 == 0) rgb <= rgb2;
else if
  (switch1 == 1) rgb <= rgb1; 

endmodule // vgaDriver
