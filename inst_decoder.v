module inst_decoder(input [15:0]inst,
		    output [3:0]opcode,r_des,r_src1,r_src2);

assign opcode=inst[15:12];
assign r_des=inst[11:8];
assign r_src1=inst[7:4];
assign r_src2=inst[3:0];
endmodule
