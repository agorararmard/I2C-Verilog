// file: AU.v
// author: @amrgouhar

`timescale 1ns/1ns

module AU(clk, rst,abit,go,addrIn, oSDA);
input clk;
input rst;
input abit;
input go;
input [6:0] addrIn;
output reg oSDA;

reg [7:0]addr;
wire R_W = 1'b0;        //here we fix read/write to write, because we handle write only

    always @(posedge clk or negedge rst or posedge go) begin
        if(!rst) begin
            addr <= 8'bx;
            oSDA <= 1'b0;
        end
        else begin
            if(go) begin
                addr <= {R_W,addrIn};
            end
            else if(abit) begin
                oSDA <= addr[0];
                addr <= addr >>1;
            end
        end
    end
endmodule