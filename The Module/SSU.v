// file: SSU.v
// author: @amrgouhar

`timescale 1ns/1ns

module SSU(busy, mclk, rst, iSCL, oSDA);
    input busy;
    input mclk;
    input rst;
    output reg iSCL;
    output reg oSDA;
    
reg [2:0] state, next_state;
parameter [2:0] idle=3'b000, startC=3'b001, stopC=3'b010, zero =3'b011, one = 3'b100;

always @(state or busy) begin
    case(state)
        idle: if(busy) next_state = startC;
            else    next_state = idle;
        startC:  if(busy) next_state= one;
            else    next_state = stopC;
        one: if(busy) next_state = one;
            else next_state = stopC;
        stopC:   if(busy) next_state = startC;
            else    next_state = stopC;
    endcase
end

always @(posedge mclk or negedge rst) begin
    if(!rst) begin
        state = idle;
    end
    else begin 
      state = next_state;
    end
end

always @(posedge mclk or negedge rst) begin
    if(!rst) begin
        iSCL = 1'b1;
        oSDA = 1'b0;
    end
    else
        case(next_state)
        idle: begin 
            iSCL = 1'b1;
            oSDA = 1'b0;
            end
        startC:begin 
            iSCL = ~iSCL;
            oSDA = 1'b1;
            end
        one: begin
            iSCL = ~iSCL;
            oSDA = 1'b0;
        end
        stopC:begin
            iSCL =1'b1;
            oSDA = 1'b0;
            end
        endcase
end
    
endmodule