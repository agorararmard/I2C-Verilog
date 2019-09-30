// file: DU.v
// author: @amrgouhar

`timescale 1ns/1ns

module DU(clk, rst,dbit,go,Data, oSDA);
input clk;
input rst;
input dbit;
input go;
input [7:0] Data;
output reg oSDA;

reg [7:0]dout;

    always @(posedge clk or negedge rst or posedge go) begin
        if(!rst) begin
            dout <= 8'bx;
            oSDA <= 1'b0;
        end
        else begin
            if(go) begin
                dout <= Data;
            end
            else if(dbit) begin
                oSDA <= dout[0];
                dout <= dout >>1;
            end
        end
    end
endmodule