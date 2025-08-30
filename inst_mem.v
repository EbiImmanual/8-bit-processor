module instr_mem(input [7:0] addr, output reg [15:0] instruction);
reg [15:0] memory[0:255];
initial begin
memory[0] = 16'b0000_0001_0010_0011; // ADD R1 = R2 + R3
memory[1] = 16'b0001_0100_0101_0110; // SUB R4 = R5 - R6
memory[2] = 16'b0010_0111_0001_0010; // MUL R7 = R1 & R2
memory[3] = 16'b0011_1000_0010_0001; // DIV R8 = R2 ^ R1
memory[4] = 16'b0100_0011_0100_0101; // AND R3 = R4 | R5
memory[5] = 16'b0101_0010_0011_0100; // OR  R2 = ~R3
memory[6] = 16'b0110_0001_0101_0001; // XOR R1 = R5 >> R1
memory[7] = 16'b0111_0100_0100_0010; // SHL R4 = R4 << R2
end

always @(*) begin
instruction = memory[addr];
end

endmodule