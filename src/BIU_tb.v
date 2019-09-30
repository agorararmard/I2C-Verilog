// file: BIU_tb.v
// author: @amrgouhar
// Testbench for BIU

`timescale 1ns/1ns

module BIU_tb;

	//Inputs
	reg iSCL;
	reg oSDA;
	reg en;


	//Outputs
	wire SCL;
	wire iSDA;

    //inout
    wire input_value;
    reg output_value;
    wire SDA;

	//Instantiation of Unit Under Test
	BIU uut (
		.iSCL(iSCL),
		.oSDA(oSDA),
		.en(en),
		.SCL(SCL),
		.iSDA(iSDA),
		.SDA(SDA)
	);

assign input_value = (en)? SDA: 1'bz;
assign SDA = (~en)? output_value : 1'bz;


always #5 iSCL = ~iSCL;
	initial begin
	//Inputs initialization
		iSCL = 0;
		oSDA = 0;
		en = 0;
        #15 oSDA = 1;
        #20 en = 1;
        #20 en = 0;
        #5    output_value = 1;

	//Wait for the reset
		#100;

	end

endmodule