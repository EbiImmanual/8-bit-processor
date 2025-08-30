
module _8bit_reg_tb;
 reg clk,reset,en;
reg[7:0] in;
wire[7:0]out;

_8bit_reg r1(clk,reset,en,in,out);

initial begin
$monitor("reset=%b  en=%b  in=%b  out=%b",reset,en,in,out);

reset=1; en=0; in=8'b11110000; #100
reset=0; en=0; in=8'b11110000; #100
reset=0; en=1; in=8'b11110000; #100

$finish;
end

endmodule