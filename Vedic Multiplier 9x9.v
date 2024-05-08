module Vedic_9_x_9(a,b,c);
input [8:0]a; 
input [8:0]b;
output [17:0]c;

wire [79:0]temp;
wire [2:0]cy0,cy1,cy2,cy3,cy4,cy5,cy6,cy7,cy8,cy9,cy10,cy11,cy12,cy13,cy14;


assign c[0]=a[0]&b[0]; 

assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];

assign temp[2]=a[2]&b[0];
assign temp[3]=a[1]&b[1];
assign temp[4]=a[0]&b[2];


assign temp[5]=a[3]&b[0];
assign temp[6]=a[2]&b[1];
assign temp[7]=a[1]&b[2];
assign temp[8]=a[0]&b[3];


assign  temp[9]=a[4]&b[0];
assign temp[10]=a[3]&b[1];
assign temp[11]=a[2]&b[2];
assign temp[12]=a[1]&b[3];
assign temp[13]=a[0]&b[4];


assign temp[14]=a[5]&b[0];
assign temp[15]=a[4]&b[1];
assign temp[16]=a[3]&b[2];
assign temp[17]=a[2]&b[3];
assign temp[18]=a[1]&b[4];
assign temp[19]=a[0]&b[5];


assign temp[20]=a[6]&b[0];
assign temp[21]=a[5]&b[1];
assign temp[22]=a[4]&b[2];
assign temp[23]=a[3]&b[3];
assign temp[24]=a[2]&b[4];
assign temp[25]=a[1]&b[5];
assign temp[26]=a[0]&b[6];


assign temp[27]=a[7]&b[0];
assign temp[28]=a[6]&b[1];
assign temp[29]=a[5]&b[2];
assign temp[30]=a[4]&b[3];
assign temp[31]=a[3]&b[4];
assign temp[32]=a[2]&b[5];
assign temp[33]=a[1]&b[7];
assign temp[34]=a[0]&b[8];


assign temp[35]=a[8]&b[0];
assign temp[36]=a[7]&b[1];
assign temp[37]=a[6]&b[2];
assign temp[38]=a[5]&b[3];
assign temp[39]=a[4]&b[4];
assign temp[40]=a[3]&b[5];
assign temp[41]=a[2]&b[6];
assign temp[42]=a[1]&b[7];
assign temp[43]=a[0]&b[8];

assign temp[44]=a[8]&b[1];
assign temp[45]=a[7]&b[2];
assign temp[46]=a[6]&b[3];
assign temp[47]=a[5]&b[4];
assign temp[48]=a[4]&b[5];
assign temp[49]=a[3]&b[6];
assign temp[50]=a[2]&b[7];
assign temp[51]=a[1]&b[8];

assign temp[52]=a[8]&b[2];
assign temp[53]=a[7]&b[3];
assign temp[54]=a[6]&b[4];
assign temp[55]=a[5]&b[5];
assign temp[56]=a[4]&b[6];
assign temp[57]=a[3]&b[7];
assign temp[58]=a[2]&b[8];


assign temp[59]=a[8]&b[3];
assign temp[60]=a[7]&b[4];
assign temp[61]=a[6]&b[5];
assign temp[62]=a[5]&b[6];
assign temp[63]=a[4]&b[7];
assign temp[64]=a[3]&b[8];

assign temp[59]=a[8]&b[3];
assign temp[60]=a[7]&b[4];
assign temp[61]=a[6]&b[5];
assign temp[62]=a[5]&b[6];
assign temp[63]=a[4]&b[7];
assign temp[64]=a[3]&b[8];


assign temp[65]=a[8]&b[4];
assign temp[66]=a[7]&b[5];
assign temp[67]=a[6]&b[6];
assign temp[68]=a[5]&b[7];
assign temp[69]=a[4]&b[8];


assign temp[70]=a[8]&b[5];
assign temp[71]=a[7]&b[6];
assign temp[72]=a[6]&b[7];
assign temp[73]=a[5]&b[8];


assign temp[74]=a[8]&b[6];
assign temp[75]=a[7]&b[7];
assign temp[76]=a[6]&b[8];

assign temp[77]=a[8]&b[7];
assign temp[78]=a[7]&b[8];

assign temp[79]=a[8]&b[8];

///////////////////////////////////

assign {cy0,c[1]}=temp[0]+temp[1];
assign {cy1,c[2]}=temp[2]+temp[3]+temp[4]+cy0;
assign {cy2,c[3]}=temp[5]+temp[6]+temp[7]+temp[8]+cy1;
assign {cy3,c[4]}=temp[9]+temp[10]+temp[11]+temp[12]+temp[13]+cy2;
assign {cy4,c[5]}=temp[14]+temp[15]+temp[16]+temp[17]+temp[18]+temp[19]+cy3;
assign {cy5,c[6]}=temp[20]+temp[21]+temp[22]+temp[23]+temp[24]+temp[25]+temp[26]+cy4;
assign {cy6,c[7]}=temp[27]+temp[28]+temp[29]+temp[30]+temp[31]+temp[32]+temp[33]+temp[34]+cy5;
assign {cy7,c[8]}=temp[35]+temp[36]+temp[37]+temp[38]+temp[39]+temp[40]+temp[41]+temp[42]+temp[43]+cy6;
assign {cy8,c[9]}=temp[44]+temp[45]+temp[46]+temp[47]+temp[48]+temp[49]+temp[50]+temp[51]+cy7;
assign {cy9,c[10]}=temp[52]+temp[53]+temp[54]+temp[55]+temp[56]+temp[57]+temp[58]+cy8;
assign {cy10,c[11]}=temp[59]+temp[60]+temp[61]+temp[62]+temp[63]+temp[64]+cy9;
assign {cy11,c[12]}=temp[65]+temp[66]+temp[67]+temp[68]+temp[69]+cy10;
assign {cy12,c[13]}=temp[70]+temp[71]+temp[72]+temp[73]+cy11;
assign {cy13,c[14]}=temp[74]+temp[75]+temp[76]+cy12;
assign {cy14,c[15]}=temp[77]+temp[78]+cy13;
assign {c[17],c[16]}=temp[79]+cy14;

endmodule