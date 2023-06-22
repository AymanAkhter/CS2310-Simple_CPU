`timescale 1ns/1ns

module INC(operand1, ans); //Uses ADD module to increment an operand by 1

    input[7:0] operand1;
    output[7:0] ans;
    wire[7:0] carry;

    // Add 1 to the operand
    ADD A1(operand1, 8'b0000001, ans);

endmodule

module DEC(operand1, ans); //Uses ADD to decrement, by adding 2's complement of 1

    input[7:0] operand1;
    output[7:0] ans;
    wire[7:0] carry;
    wire[7:0] op; 

    //2's complement of 1 stored in op
    buf B[7:0] (op[7:0], 1'b1); // 
    
    //Add op to the operand
    ADD A(operand1, op, ans);

endmodule
    