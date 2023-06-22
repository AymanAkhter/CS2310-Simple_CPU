Contents of README:
1.FILES OF THE FOLDER
2.REQUIREMENTS
3.INSTRUCTIONS

FILES OF THE FOLDER
-----------------------------------------------------------------------------------------------------------------------------------------
The following files are contained in the folder
1.README : Text file explaining the contents of the folder and the instruction to compile the code
2. CPU.v : Verilog code simulating Control Unit.
3. ALU.v : Verilog source code simulating the Arithmetic and Logic Unit.
4. CPU_tb.v: Test Bench for CPU.v
5. Report : A PDF report of this assignment explaining various parts of the project.

REQUIREMENTS
-----------------------------------------------------------------------------------------------------------------------------------------
1. Icarus Verilog
2. GTKWave
3. A text editor.

INSTRUCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
1.Open terminal
2.Change to the folder with the files.
3.Use the following command for compilation 
	(iverilog CPU.v CPU_tb.v FullAdder.v AND_OR_NOT.v ADD_SUB.v INC_DEC.v ALU.v)
4.Use the following command to simulate the modules
	vvp a.out
5.Use GTKWave to check the waveforms
	gtkwave CU_tb.vcd 
-----------------------------------------------------------------------------------------------------------------------------------------
