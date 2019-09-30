// file: SSU_tb.v
// author: @amrgouhar
// Testbench for SSU

`timescale 1ns/1ns

module SSU_tb;

	//Inputs
	reg busy;
	reg mclk;
	reg rst;


	//Outputs
	wire iSCL;
	wire oSDA;


	//Instantiation of Unit Under Test
	SSU uut (
		.busy(busy),
		.mclk(mclk),
		.rst(rst),
		.iSCL(iSCL),
		.oSDA(oSDA)
	);

    always #5 mclk = ~ mclk;
	initial begin
	//Inputs initialization
		busy = 0;
		mclk = 0;
		rst = 0;
        #15 rst = 1;
        #10 busy = 1;
        #50 busy = 0;
        #100 busy = 1;

	//Wait for the reset
		#100;

	end

endmodule