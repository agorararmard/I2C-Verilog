// file: AU_tb.v
// author: @amrgouhar
// Testbench for AUCLK

`timescale 1ns/1ns

module AU_tb;

	//Inputs
	reg clk;
	reg rst;
	reg abit;
	reg go;
	reg [6: 0] addrIn;


	//Outputs
	wire oSDA;


	//Instantiation of Unit Under Test
	AUCLK uut (
		.clk(clk),
		.rst(rst),
		.abit(abit),
		.go(go),
		.addrIn(addrIn),
		.oSDA(oSDA)
	);

always #5 clk = ~clk;
	initial begin
	//Inputs initialization
		clk = 0;
		rst = 0;
		abit = 0;
		go = 0;
		addrIn = 0;
        #15 rst = 1;
        #10 addrIn= 65;
        #10 go = 1;
        #10 go =0;
            abit = 1;
        #80 abit =0;

	//Wait for the reset
		#100;

	end

endmodule