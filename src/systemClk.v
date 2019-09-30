// file: systemClk.v
// author: @amrgouhar

`timescale 1ns/1ns

module systemClk(mclk,clk,rst);
input mclk;
input rst;
output reg clk;
always @(posedge mclk or negedge rst)
    if(!rst) clk = 1'b0;
    else    clk = ~clk;
endmodule