module New_karastuba_16(X,Y,Mul_Out);
   input [15:0] X,Y;
   output [31:0] Mul_Out;
	

	 wire [7:0]lev_1[3:0];
	 wire [15:0]lev_2[1:0]; 
	 wire [8:0]temporary_1[1:0];				
	 wire [17:0]temporary_2;					
	 wire [17:0]temporary_3;					
	 wire [31:0]shifted16_16;					
	 wire [25:0]shifted16_8;					

	 
	 //*************Main body of the multiplier*************//
	 assign lev_1[0] = X[15:8];
	 assign lev_1[1] = X[7:0];
	 assign lev_1[2] = Y[15:8];
	 assign lev_1[3] = Y[7:0];
	 
	 Vedic_8_x_8 MM0(.a(lev_1[0]),.b(lev_1[2]),.c(lev_2[0]));
	 Vedic_8_x_8 MM1(.a(lev_1[1]),.b(lev_1[3]),.c(lev_2[1]));	 
	 

     assign temporary_1[0] = lev_1[0] + lev_1[1];		
	 assign temporary_1[1] = lev_1[2] + lev_1[3];		
	 
	 Vedic_9_x_9 MM2(.a(temporary_1[0]),.b(temporary_1[1]),.c(temporary_2));	 
	 


	 assign temporary_3 = temporary_2 - (lev_2[0] + lev_2[1]); 
	 assign shifted16_16 = lev_2[0]<<16;
	 assign shifted16_8 = temporary_3<<8;
	 assign Mul_Out = shifted16_16 + shifted16_8 + lev_2[1];
	 
	 
endmodule