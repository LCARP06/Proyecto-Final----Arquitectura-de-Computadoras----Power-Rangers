module UC(
input [5:0] OP,
output reg RegDst,
output reg ALUSrc,
output reg MemToReg,
output reg MemWrite,
output reg MemRead,
output reg Branch,
output reg [2:0] ALUOp,
output reg RegWrite
);

always @* begin

case(OP)

6'b000000:
begin
    RegDst   = 1'b1;
    ALUSrc   = 1'b0;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b010;
    RegWrite = 1'b1;
end

6'b001000:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b000;
    RegWrite = 1'b1;
end

6'b001010:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b011;
    RegWrite = 1'b1;
end

6'b001100:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b100;
    RegWrite = 1'b1;
end

6'b001101:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b101;
    RegWrite = 1'b1;
end

6'b100011:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b1;
    MemWrite = 1'b0;
    MemRead  = 1'b1;
    Branch   = 1'b0;
    ALUOp    = 3'b000;
    RegWrite = 1'b1;
end

6'b101011:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b1;
    MemToReg = 1'b0;
    MemWrite = 1'b1;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b000;
    RegWrite = 1'b0;
end

6'b000100:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b0;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b1;
    ALUOp    = 3'b001;
    RegWrite = 1'b0;
end

default:
begin
    RegDst   = 1'b0;
    ALUSrc   = 1'b0;
    MemToReg = 1'b0;
    MemWrite = 1'b0;
    MemRead  = 1'b0;
    Branch   = 1'b0;
    ALUOp    = 3'b000;
    RegWrite = 1'b0;
end

endcase

end

endmodule