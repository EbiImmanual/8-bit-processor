module prg_counter(input clk,reset,en,input[7:0] load_val,output reg[7:0] pc_out);

always@(posedge clk or posedge reset)
begin
if(reset)
pc_out<=8'b00000000;
else if(en)
pc_out<=load_val;
else
pc_out<=pc_out+1;
end
endmodule
