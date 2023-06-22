`timescale 1ns/1ns

module CPU(instruction, result);

	input[18:0] instruction;
	output[7:0] result;

	wire[2:0] operator;
	wire[7:0] operand1;
	wire[7:0] operand2;

	wire[7:0] select;

	//Breaking instruction to operator and operands
	buf B1[2:0] (operator[2:0], instruction[18:16]);
	buf B2[7:0] (operand1[7:0], instruction[15:8]);
	buf B3[7:0] (operand2[7:0], instruction[7:0]);

	wire[2:0] operatorbar;
	not n[2:0] (operatorbar[2:0], operator[2:0]);

	//Decoder
	and a1(select[0], operatorbar[2], operatorbar[1], operatorbar[0]);
	and a2(select[1], operatorbar[2], operatorbar[1], operator[0]);
	and a3(select[2], operatorbar[2], operator[1], operatorbar[0]);
	and a4(select[3], operatorbar[2], operator[1], operator[0]);
	and a5(select[4], operator[2], operatorbar[1], operatorbar[0]);
	and a6(select[5], operator[2], operatorbar[1], operator[0]);
	and a7(select[6], operator[2], operator[1], operatorbar[0]);
	and a8(select[7], operator[2], operator[1], operator[0]);

	//Obtaining output from ALU
	ALU AL(operand1, operand2, select, result);	 

endmodule



