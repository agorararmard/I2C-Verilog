// file: DU_tb.v
// author: @amrgouhar
// Testbench for DU

`timescale 1ns/1ns

module DU_tb;

	//Inputs
	reg clk;
	reg rst;
	reg dbit;
	reg go;
	reg [7: 0] Data;


	//Outputs
	wire oSDA;


	//Instantiation of Unit Under Test
	DU uut (
		.clk(clk),
		.rst(rst),
		.dbit(dbit),
		.go(go),
		.Data(Data),
		.oSDA(oSDA)
	);



always #5 clk = ~clk;
	initial begin
	//Inputs initialization
		clk = 0;
		rst = 0;
		dbit = 0;
		go = 0;
		Data = 0;
        #15 rst = 1;
        #10 Data= 123;
        #10 go = 1;
        #10 go =0;
            dbit = 1;
        #80 dbit =0;

	//Wait for the reset
		#100;

	end
endmodule