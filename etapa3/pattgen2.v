module pattgen2(
// lista de porturi

 output 	[2:0] rgb_o,					
 input 		[9:0] row_i,	      
 input 		[9:0] column_i		
);

//lista parametrii interni
//localparam x2 = 160; // prima treime din imagine (480/3)
//localparam x3 = 320; 
 
//culori
localparam GREEN     = 3'b010;
localparam RED	     = 3'b100;
localparam BLUE	     = 3'b001;
localparam CYAN      = 3'b011;
		


assign rgb_o = ((row_i > 160) & (row_i < 320))? BLUE : CYAN;


endmodule