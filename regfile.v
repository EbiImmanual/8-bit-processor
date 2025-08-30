module regfile(input clk,reset,en, 
   	       input [2:0]read_add1,read_add2,write_add,
	       input[7:0] datain,
               output[7:0] read_data1,read_data2);
integer i;
reg[7:0] register[7:0];
always @(posedge clk or posedge reset)   //data writing(sequential)
begin
if(reset)
for(i=0;i<8;i=i+1)
register[i]<=8'b00000000;
else if(en)
register[write_add]<=datain;
end

assign read_data1=register[read_add1];   //data read(combinational)
assign read_data2=register[read_add2];
endmodule
