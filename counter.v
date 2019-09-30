// file: count.v
// author: @amrgouhar

`timescale 1ns/1ns

module counter(clk, rst, newcount, outcount);
    input clk;
    input rst;
    input newcount;
    output outcount;
    
    reg en;
    
    reg[2:0] counter;
    
    assign outcount = (counter == 3'b111);
    
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            counter <=3'b000;
            en<=1'b0;
        end
        else 
            if(newcount) begin
                counter <=3'b000;
                en <= 1'b1;
            end
            else
                if(en) begin
                    counter <= counter + 3'b001;
                    if(counter == 3'b111) begin
                        en <= 1'b0;
                    end
                end
                else 
                    counter <= counter;
    end
    
endmodule