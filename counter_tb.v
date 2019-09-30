// file: counter_tb.v
// author: @amrgouhar
// Testbench for counter

`timescale 1ns/1ns

module counter_tb;

	//Inputs
	reg clk;
	reg rst;
	reg newcount;


	//Outputs
	wire outcount;


	//Instantiation of Unit Under Test
	counter uut (
		.clk(clk),
		.rst(rst),
		.newcount(newcount),
		.outcount(outcount)
	);

always #5 clk = ~clk;
	initial begin
	//Inputs initialization
		clk = 0;
		rst = 0;
		newcount = 0;
        #10 rst =1;
        #15 newcount = 1;
        #5 newcount = 0;
        #25 newcount = 1;
        #5 newcount = 0;
        #105 newcount = 1;
        #5 newcount = 0;

	//Wait for the reset
		#100;

	end

endmodule