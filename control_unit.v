module control_unit(input[2:0] opcode, output reg[2:0] alu_ctrl,output reg reg_write);

always@(*)
begin

case(opcode)

3'b000: begin
alu_ctrl=3'b000;
reg_write=1'b1;
end

3'b001: begin
alu_ctrl=3'b001;
reg_write=1'b1;
end

3'b010: begin
alu_ctrl=3'b010;
reg_write=1'b1;
end

3'b011: begin
alu_ctrl=3'b011;
reg_write=1'b1;
end

3'b100: begin
alu_ctrl=3'b100;
reg_write=1'b1;
end

3'b101: begin
alu_ctrl=3'b101;
reg_write=1'b1;
end

3'b110: begin
alu_ctrl=3'b110;
reg_write=1'b1;
end

3'b111: begin
alu_ctrl=3'b111;
reg_write=1'b1;
end

default: begin
alu_ctrl=3'b000;
reg_write=1'b0;
end

endcase
end
endmodule
