`timescale 1ns/1ns

module AND(operand1, operand2, result);

	input wire[7:0] operand1;
	input wire[7:0] operand2;
	output wire[7:0] result;

	//8 AND gates to take AND of all bits
    and aa[7:0] (result[7:0], operand1[7:0], operand2[7:0]);  

endmodule

module OR(operand1, operand2, result);

	input[7:0] operand1;
	input[7:0] operand2;
	output[7:0] result;

	//8 OR gates to take OR of all bits
    or ab[7:0] (result[7:0], operand1[7:0], operand2[7:0]);  

endmodule 

module NOT(operand1, result);

	input[7:0] operand1;
	input[7:0] operand2;
	output[7:0] result;

	//8 NOT gates to take NOT of all bits
    not nc[7:0] (result[7:0], operand1[7:0]);  

endmodule 

