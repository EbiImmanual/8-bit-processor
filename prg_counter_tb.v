module prg_counter_tb;

reg clk,reset,en;
reg[7:0] load_val;
wire[7:0] pc_out;

prg_counter p1(clk,reset,en,load_val,pc_out);
initial begin
reset=1; en=1; load_val=8'b00000001;#100
reset=0; en=1; load_val=8'b00000001;#100
reset=0; en=0; load_val=8'b00000001;#100
$finish;
end
endmodule

