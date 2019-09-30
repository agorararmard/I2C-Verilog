// file: BIU.v
// author: @amrgouhar

`timescale 1ns/1ns

module BIU(iSCL, oSDA,SCL,SDA,iSDA, en, clk);
input iSCL;
input oSDA;
input en;
inout SDA;
output SCL;
output reg iSDA;
output clk;

reg mid;

assign clk = iSCL;
assign SCL = iSCL;

assign SDA = en? mid:1'bz;


always @(posedge iSCL)
    if(!en) begin
        iSDA <= SDA;
        mid <= 1'bz;
    end
    else begin
        iSDA <= 1'bz;
        mid <= oSDA;
        end
endmodule