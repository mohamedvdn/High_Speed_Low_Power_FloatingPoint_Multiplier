 module Floating_Point_Multiplier_Vedic_hybrid_Tb ();
  reg [31:0]A,B;
  wire [31:0]Mul_Out;
  
 

	initial 
	begin
		//	A=32'b11000001100100000000000000000000;//-18.0
	//		B=32'b11000001000110000000000000000000;//-9.5
			

		//	A=32'b11000001101000000000000000000000;//-20
		//	B=32'b01000010001000000000000000000000;//+40
			
            A=32'b01000010010100000000000000000000; //52
			B=32'b11000001001000000000000000000000; //-10
			
			
			
	end
   
      

  FP_Multiplier_Single_Hybrid M0 (A,B,Mul_Out); 
  
	initial 
	begin                   
	$dumpfile("FP_Vedic.vcd");                  
	$dumpvars;                 
	#1000 $dumpoff;            
	end 

endmodule