module pattGen2 (
	//Lista de porturi
	output	[2:0] rgb_o,
	input	[8:0] row_i,
	input	[9:0] column_i
	
);
//Lista de parametrii
localparam RED   = 3'b100;
localparam GREEN = 3'b010;
localparam BLUE  = 3'b001;
localparam CYAN  =3'b011;

localparam x0 = 160;
localparam x1 = 320;


//Semnale interne
// N/A

//Cod
//always @(*)
//if ((column_i > x0) & (column_i < x1)) rgb_o = RED; else
//											rgb_o = GREEN;

assign rgb_o = ((row_i > x0) & (row_i < x1))? BLUE : CYAN;

endmodule