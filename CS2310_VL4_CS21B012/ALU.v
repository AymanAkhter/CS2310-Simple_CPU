`timescale 1ns/1ns

module ALU(operand1, operand2, select, result);

    input[7:0] operand1;
    input[7:0] operand2;
    input[7:0] select;
    output[7:0] result;

    wire[7:0] p0,p1,p2,p3,p4,p5,p6,p7; 

    //Storing results of all modules in p1, p2... p7
    ADD a1(operand1, operand2, p1);
    SUB a2(operand1, operand2, p2);
    INC a3(operand1, p3);
    DEC a4(operand1, p4);
    AND a5(operand1, operand2, p5);
    OR a6(operand1, operand2, p6);
    NOT a7(operand1, p7);

    wire[7:0] r0,r1,r2,r3,r4,r5,r6,r7;

    //ANDing the results of modules with respective control bus signals and storing in r1, r2... r7
    and ab1[7:0] (r1[7:0], p1[7:0], select[1]);
    and ab2[7:0] (r2[7:0], p2[7:0], select[2]);
    and ab3[7:0] (r3[7:0], p3[7:0], select[3]);
    and ab4[7:0] (r4[7:0], p4[7:0], select[4]);
    and ab5[7:0] (r5[7:0], p5[7:0], select[5]);
    and ab6[7:0] (r6[7:0], p6[7:0], select[6]);
    and ab7[7:0] (r7[7:0], p7[7:0], select[7]);

    //Taking OR and storing in result
    or o[7:0] (result[7:0], r1[7:0], r2[7:0], r3[7:0], r4[7:0], r5[7:0], r6[7:0], r7[7:0]);  


endmodule
