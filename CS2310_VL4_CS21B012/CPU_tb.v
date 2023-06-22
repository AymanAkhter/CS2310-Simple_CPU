`timescale 1ns/1ns

module CPU_tb;

	reg[18:0] instruction;
	wire[7:0] result;
 
	CPU uut(instruction, result);

	initial begin

		$dumpfile("CPU_tb.vcd");
		$dumpvars(0,CPU_tb);

		instruction = 19'b0010010001100010100; #20; //Addition 
        instruction = 19'b0100010001100010100; #20; //Subtraction 
        instruction = 19'b0110010001100010100; #20; //Bitwise And 
        instruction = 19'b1000010001100010100; #20; //Bitwise or 
        instruction = 19'b1010010001100010100; #20; //Bitwise Not 
        instruction = 19'b1100010001100010100; #20; //Increment 
        instruction = 19'b1110010001100010100; #20; //Decrement

		$display("Test Completed");

	end

endmodule
