// file: I2CBus_tb.v
// author: @amrgouhar
// Testbench for I2CBus

`timescale 1ns/1ns

module I2CBus_tb;

	//Inputs
	reg mclk;
	reg rst;
	reg go;
	reg [6: 0] addrIn;
	reg [7: 0] Data;


	//Outputs
	wire done;
	wire success;
	wire SCL;
    
    //simulation
    wire enb;
    wire bitx;
    
    //inout
    wire input_value;
    reg output_value;
    wire SDA;


	//Instantiation of Unit Under Test
	I2CBus uut (
		.mclk(mclk),
		.rst(rst),
		.go(go),
		.addrIn(addrIn),
		.Data(Data),
		.done(done),
		.success(success),
		.SCL(SCL),
		.SDA(SDA),
		.enb(enb),
		.bitx(bitx)
	);


    assign input_value = (enb)? SDA: 1'bz;
    assign SDA = (~enb)? output_value : 1'bz;

always #5 mclk = ~mclk;
	initial begin
	//Inputs initialization
		mclk = 0;
		rst = 0;
		go = 0;
		addrIn = 0;
		Data = 0;
		repeat(20) begin
		rst = 0;
        #15 rst = 1;
        #5 addrIn = $random % 255;
        Data = $random % 255;
        #5 go =1;
        #20 go = 0;
        #500;
        end       
	//Wait for the reset
		#100;
	end

 always@(posedge mclk) begin
            if(bitx)
                output_value = 1'b1;
            else
                output_value = 1'b0;
        end

   always @(posedge done)
    begin
            if(success)
                begin
                    #5;
                $display("Success");
            end
            else begin
                #5;
                $display("Failure");
            end
    end



endmodule

