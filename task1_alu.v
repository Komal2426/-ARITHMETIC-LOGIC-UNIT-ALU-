module task1_alu (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [2:0] sel,
    output reg  [7:0] Y,
    output reg        carry,
    output reg        zero
);
    always @(*) begin
        carry = 1'b0;
        case (sel)
            3'b000: {carry, Y} = A + B;
            3'b001: {carry, Y} = A - B;
            3'b010: Y = A & B;
            3'b011: Y = A | B;
            3'b100: Y = ~A;
            default: Y = 8'h00;
        endcase
        zero = (Y == 8'h00);
    end
endmodule
