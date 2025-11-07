`timescale 1ns/1ps
module tb_task1_alu;
    reg [7:0] A, B;
    reg [2:0] sel;
    wire [7:0] Y;
    wire carry, zero;

    task1_alu uut (.A(A), .B(B), .sel(sel), .Y(Y), .carry(carry), .zero(zero));

    initial begin
        A = 8'h05; B = 8'h03; sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        $stop;
    end
endmodule
