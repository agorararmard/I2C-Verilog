// file: MasterControl.v
// author: @amrgouhar

`timescale 1ns/1ns

module MasterControl(clk, rst, iSDA, bit8, go, busy, newcount, dbit, abit, done, success, en, sel);
input clk;
input rst;
input iSDA;
input bit8;
input go;
output reg busy;
output reg newcount;
output reg dbit;
output reg abit;
output reg done;
output reg success;
output reg en;
output reg [1:0] sel;

reg countStarted;


reg [2:0] state, next_state;
parameter [2:0] idle=3'b000, start=3'b001, sendAddr=3'b010, Addrsent =3'b011, sendData = 3'b100, Datasent = 3'b101, Success = 3'b110;
/*
always @(state or go or bit8 or iSDA) begin
    case(state)
        idle: if(go) next_state = start;
            else    next_state = idle;
            
        start:  next_state= sendAddr;
        
        sendAddr: if(bit8) next_state = Addrsent;
            else next_state = sendAddr;
            
        Addrsent: if(iSDA) next_state = sendData;
            else  begin next_state = idle; back = 1'b1; end
            
        sendData: if(bit8) next_state = Datasent;
            else next_state = sendData;
        Datasent:   if(iSDA) next_state = Success;
            else begin   next_state = idle; back = 1'b1; end
        Success: begin next_state = idle; back = 1'b1; end
    endcase
end

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        state = idle;
    end
    else begin 
      state = next_state;
      done = back;
    end
end
*/
reg[1:0] cnt;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        state = idle;
    end
    else begin 
          case(state)
        idle: if(go) begin state = start; end
            else    state = idle;
            
        start:  begin state= sendAddr; en = 1'b1; end
        
        sendAddr: if(bit8) begin state = Addrsent; en = 1'b0; end
            else state = sendAddr;
            
        Addrsent: if(cnt <= 2'b01) state = Addrsent;
                    else
            
            if(iSDA) begin state = sendData; en = 1'b1;end
            else begin state = idle; done = 1'b1; end
            
        sendData: if(bit8) begin  state = Datasent; en = 1'b0; end
            else state = sendData;
        Datasent:   if(cnt <= 2'b01) state = Datasent;
                    else
             
            if(iSDA) begin state = Success; en = 1'b1; end
            else begin   state = idle; done = 1'b1; end
        Success:  if(cnt == 2'b00) 
            begin state = idle; done = 1'b1; end
    endcase

    end
end


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        busy = 1'b0;
        newcount = 1'b0;
        dbit = 1'b0;
        abit = 1'b0;
        done = 1'b0;
        success=1'b0;
        sel = 2'b11;
        en = 1'b0;
        countStarted = 1'b0;
        cnt = 2'b00;
    end
    else
        case(state)
        idle: begin 
                busy = 1'b0;
                newcount = 1'b0;
                dbit = 1'b0;
                abit = 1'b0;
                done = 1'b0;
                success=1'b0;
                countStarted = 1'b0;
                sel = 2'b11;
                cnt = 2'b00;
            end
        start:begin 
            busy = 1'b1;
            sel = 2'b00;
            end
        sendAddr: begin
            abit = 1'b1;
            sel = 2'b01;
            if(countStarted)
                newcount = 1'b0;
            else begin
                newcount = 1'b1;
                countStarted = 1'b1;
            end       
            cnt = 2'd0;
        end
        Addrsent:begin
            countStarted =1'b0;
            abit = 1'b0;
            sel = 2'b11;
            cnt = cnt+2'd1;
            end
        sendData:begin
            dbit = 1'b1;
            sel = 2'b10;
            if(countStarted)
                newcount = 1'b0;
            else begin
                newcount = 1'b1;
                countStarted = 1'b1;
            end       
            cnt = 2'd0;
            end
        Datasent:begin
            countStarted =1'b0;
            abit = 1'b0;
            sel = 2'b11;
            cnt = cnt+2'd1;
            end
        Success:begin
            success = 1'b1;
            busy = 1'b0;
            cnt = cnt+2'd1;
            end

        endcase
end

endmodule