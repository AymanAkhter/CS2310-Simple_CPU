`timescale 1ns/1ns

module ADD(operand1, operand2, sum);

    input[7:0] operand1;
    input[7:0] operand2;
    output[7:0] sum;

    wire[7:0] carry; //Carry Bus

     //First sum using 0 as carry
    FullAdder F0(operand1[0], operand2[0], 1'b0, sum[0], carry[0]);

    //Ripple carry addition
    FullAdder F[7:1] (operand1[7:1], operand2[7:1], carry[6:0], sum[7:1], carry[7:1]); 

endmodule

module SUB(operand1, operand2, diff);

    input[7:0] operand1;
    input[7:0] operand2;
    output[7:0] diff;
    wire[7:0] op1;
    wire[7:0] op2;

    //2's complement of operand2
    NOT N(operand2, op1);
    INC I(op1, op2);

    //Add the 2's complement to operand1
    ADD A(operand1, op2, diff);

endmodule