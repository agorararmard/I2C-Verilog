// file: I2CBus.v
// author: @amrgouhar

`timescale 1ns/1ns

module I2CBus(SCL, SDA, mclk, rst, go,addrIn,Data,done, success, enb, bitx);

inout SDA;

input mclk;
input rst;
input go;
input [6:0] addrIn;
input [7:0] Data;

output done;
output success;
output SCL;

// for simulation
output enb;        
output bitx;

wire busy;
wire iSCL;
wire oSDAssu;   //00
wire iSDA;
wire clk;
wire newcount;
wire bit8;
wire abit;
wire dbit;
wire oSDAau;    //01
wire oSDAdu;    //10
wire oSDA;      //select;

wire [1:0] sel; 

wire en;        //add to master controller

//for simulation
assign enb = en;
assign bitx = bit8;

assign oSDA = (sel == 2'b00)? oSDAssu:(sel == 2'b01)? oSDAau:(sel == 2'b10)? oSDAdu:1'bz;

// systemClk ssclk(.mclk(mclk),.clk(clk),.rst(rst));

SSU ssu(.busy(busy), .mclk(mclk), .rst(rst), .iSCL(iSCL), .oSDA(oSDAssu));

BIU biu(.iSCL(iSCL), .oSDA(oSDA),.SCL(SCL),.SDA(SDA),.iSDA(iSDA), .en(en), .clk(clk));

counter cnt(.clk(clk), .rst(rst), .newcount(newcount), .outcount(bit8));

AU au(.clk(clk), .rst(rst),.abit(abit),.go(go),.addrIn(addrIn), .oSDA(oSDAau));

DU du(.clk(clk), .rst(rst),.dbit(dbit),.go(go),.Data(Data), .oSDA(oSDAdu));

MasterControl mc(.clk(mclk), .rst(rst), .iSDA(iSDA), .bit8(bit8), .go(go), .busy(busy), .newcount(newcount), .dbit(dbit), .abit(abit), .done(done), .success(success), .en(en),.sel(sel));

endmodule

