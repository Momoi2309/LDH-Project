module pattGen (
	//Lista de porturi
	output	[2:0] rgb_o,
	input	[8:0] row_i,
	input	[9:0] column_i
	
);
//Lista de parametrii
localparam RED   = 3'b100;
localparam GREEN = 3'b010;
localparam BLUE  = 3'b001;

localparam x0 = 213;
localparam x1 = 426;


//Semnale interne
// N/A

//Cod
//always @(*)
//if ((column_i > x0) & (column_i < x1)) rgb_o = RED; else
//											rgb_o = GREEN;

assign rgb_o = ((column_i > x0) & (column_i < x1))? RED : GREEN;

endmodule