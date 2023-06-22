 `timescale 1ns/1ns

module HalfAdder(A,B,sum,carry); //Adds two 1-bit inputs
	input A,B;
	output sum, carry;

	not (Abar,A);
	not (Bbar,B);
	and (AbarB,Abar,B);
    and (ABbar, A, Bbar); 
	or (sum, ABbar, AbarB);
	and (carry,A,B);

endmodule

module FullAdder(A,B,ci,sum,co); //Uses Half Adders to add A,B and ci
	input A,B,ci;
	output sum, co;
	wire X,Y,Z;

	HalfAdder h1 (.A(A), .B(B), .sum(X), .carry(Y));
	HalfAdder h2 (.A(X), .B(ci), .sum(sum), .carry(Z));
	or (co, Y, Z);

endmodule
