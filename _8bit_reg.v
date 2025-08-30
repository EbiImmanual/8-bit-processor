module _8bit_reg(input clk,reset,en,input[7:0]in,output[7:0] out);

dff1 e0(clk,reset,en,in[0],out[0]);
dff1 e1(clk,reset,en,in[1],out[1]);
dff1 e2(clk,reset,en,in[2],out[2]);
dff1 e3(clk,reset,en,in[3],out[3]);
dff1 e4(clk,reset,en,in[4],out[4]);
dff1 e5(clk,reset,en,in[5],out[5]);
dff1 e6(clk,reset,en,in[6],out[6]);
dff1 e7(clk,reset,en,in[7],out[7]);
endmodule



