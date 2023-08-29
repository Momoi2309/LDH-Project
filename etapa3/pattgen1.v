module pattgen1(                     

// lista de porturi

output 	  	[2:0] rgb_o,						
input 		[9:0] row_i,	         
input 		[9:0] column_i		                   
);



 
// lista parametrii interni
localparam x0 = 213; // prima treime din imagine (640/3)
localparam x1 = 426; // a doua treime din imagine  (426 * 2)			


localparam GREEN     = 3'b010;
localparam RED	     = 3'b100;
localparam BLUE	     = 3'b001;
localparam CYAN      = 3'b011;
		


assign rgb_o = ((column_i > x0) & (column_i < x1))? RED : GREEN;


endmodule