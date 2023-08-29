module genPatt(
// lista de porturi

output 	    [2:0] rgb_o,						// se pune reg daca folosim always
input 		[9:0] row_i,	
input 		[8:0] column_i		


);
 
// lista parametrii interni
localparam x1     = 213	  ;				//prima treime din imagine(limita)	x1=640/3			//sau parameter dar poate fii schimbat din afara  
localparam x2     = 426   ;				//a doua treime din imagine (limita)
localparam GREEN  = 3'b010;
localparam RED	  = 3'b100;
localparam BLUE	  = 3'b001;
		

  
// lista semnale interne
// N/A


//COD

//always (*)													// * steluta le pune pe toate dar trebuie sa fie de tip reg
//if ((column > x1) & (column < x2)) rgb_o = RED; else
//rgb_o = GREEN;

assign rgb_o =  ((column_i > x1) & (column_i < x2)) ? RED : 		// ? = if ,,,, : = else
												  GREEN;




//PSEUDO COD + EXPLICATII
 
//for i = 0 : i < 480 : i++ 			// for each line
  //for j = 0 ; j < 640 ; j++ 		// for each pixel (column)

//if (column < x1) rgb_o = GREEN; else
//if ((column > x1) & (column < x2)) rgb_o = RED; else
//if (column > x2 )rgb_o = GREEN;

//sau

//if ((column > x1) & (column < x2)) rgb_o = RED; else
//rgb_o = GREEN

//sau 

// if (column < x1) rgb_o = GREEN; else
// if ((column > x1) & (column < x2)) rgb_o = RED; else
// rgb_o = GREEN;

endmodule