/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 5.4.0-6ubuntu1~16.04.4 -O2 -fstack-protector-strong -fPIC -Os) */

module AU(clk, rst, abit, go, addrIn, oSDA);
  wire [7:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  input abit;
  wire [7:0] addr;
  input [6:0] addrIn;
  input clk;
  input go;
  output oSDA;
  input rst;
  INVX1 _044_ (
    .A(go),
    .Y(_007_)
  );
  INVX1 _045_ (
    .A(addrIn[6]),
    .Y(_008_)
  );
  NAND2X1 _046_ (
    .A(go),
    .B(_008_),
    .Y(_009_)
  );
  INVX1 _047_ (
    .A(addrIn[5]),
    .Y(_010_)
  );
  NAND2X1 _048_ (
    .A(go),
    .B(_010_),
    .Y(_025_)
  );
  INVX1 _049_ (
    .A(addrIn[4]),
    .Y(_011_)
  );
  NAND2X1 _050_ (
    .A(go),
    .B(_011_),
    .Y(_042_)
  );
  INVX1 _051_ (
    .A(addrIn[3]),
    .Y(_012_)
  );
  NAND2X1 _052_ (
    .A(go),
    .B(_012_),
    .Y(_002_)
  );
  INVX1 _053_ (
    .A(addrIn[2]),
    .Y(_013_)
  );
  NAND2X1 _054_ (
    .A(go),
    .B(_013_),
    .Y(_003_)
  );
  INVX1 _055_ (
    .A(addrIn[1]),
    .Y(_014_)
  );
  NAND2X1 _056_ (
    .A(go),
    .B(_014_),
    .Y(_004_)
  );
  INVX1 _057_ (
    .A(addrIn[0]),
    .Y(_015_)
  );
  NAND2X1 _058_ (
    .A(go),
    .B(_015_),
    .Y(_005_)
  );
  INVX2 _059_ (
    .A(rst),
    .Y(_016_)
  );
  NAND2X1 _060_ (
    .A(go),
    .B(oSDA),
    .Y(_017_)
  );
  OAI21X1 _061_ (
    .A(go),
    .B(_016_),
    .C(_017_),
    .Y(_006_)
  );
  INVX2 _062_ (
    .A(addr[1]),
    .Y(_019_)
  );
  NAND2X1 _063_ (
    .A(addr[2]),
    .B(abit),
    .Y(_021_)
  );
  OAI21X1 _064_ (
    .A(abit),
    .B(_019_),
    .C(_021_),
    .Y(_000_[1])
  );
  INVX2 _065_ (
    .A(addr[2]),
    .Y(_024_)
  );
  NAND2X1 _066_ (
    .A(abit),
    .B(addr[3]),
    .Y(_027_)
  );
  OAI21X1 _067_ (
    .A(abit),
    .B(_024_),
    .C(_027_),
    .Y(_000_[2])
  );
  INVX2 _068_ (
    .A(addr[3]),
    .Y(_030_)
  );
  NAND2X1 _069_ (
    .A(abit),
    .B(addr[4]),
    .Y(_031_)
  );
  OAI21X1 _070_ (
    .A(abit),
    .B(_030_),
    .C(_031_),
    .Y(_000_[3])
  );
  INVX2 _071_ (
    .A(addr[4]),
    .Y(_032_)
  );
  NAND2X1 _072_ (
    .A(abit),
    .B(addr[5]),
    .Y(_033_)
  );
  OAI21X1 _073_ (
    .A(abit),
    .B(_032_),
    .C(_033_),
    .Y(_000_[4])
  );
  INVX2 _074_ (
    .A(addr[5]),
    .Y(_034_)
  );
  NAND2X1 _075_ (
    .A(abit),
    .B(addr[6]),
    .Y(_035_)
  );
  OAI21X1 _076_ (
    .A(abit),
    .B(_034_),
    .C(_035_),
    .Y(_000_[5])
  );
  INVX2 _077_ (
    .A(addr[6]),
    .Y(_036_)
  );
  NAND2X1 _078_ (
    .A(abit),
    .B(addr[7]),
    .Y(_037_)
  );
  OAI21X1 _079_ (
    .A(abit),
    .B(_036_),
    .C(_037_),
    .Y(_000_[6])
  );
  INVX1 _080_ (
    .A(addr[7]),
    .Y(_038_)
  );
  NOR2X1 _081_ (
    .A(abit),
    .B(_038_),
    .Y(_000_[7])
  );
  INVX2 _082_ (
    .A(oSDA),
    .Y(_039_)
  );
  NAND2X1 _083_ (
    .A(abit),
    .B(addr[0]),
    .Y(_040_)
  );
  OAI21X1 _084_ (
    .A(abit),
    .B(_039_),
    .C(_040_),
    .Y(_001_)
  );
  INVX2 _085_ (
    .A(addr[0]),
    .Y(_041_)
  );
  NAND2X1 _086_ (
    .A(addr[1]),
    .B(abit),
    .Y(_043_)
  );
  OAI21X1 _087_ (
    .A(abit),
    .B(_041_),
    .C(_043_),
    .Y(_000_[0])
  );
  NAND2X1 _088_ (
    .A(go),
    .B(addrIn[0]),
    .Y(_018_)
  );
  NAND2X1 _089_ (
    .A(go),
    .B(addrIn[1]),
    .Y(_020_)
  );
  NAND2X1 _090_ (
    .A(go),
    .B(addrIn[2]),
    .Y(_022_)
  );
  NAND2X1 _091_ (
    .A(go),
    .B(addrIn[3]),
    .Y(_023_)
  );
  NAND2X1 _092_ (
    .A(go),
    .B(addrIn[4]),
    .Y(_026_)
  );
  NAND2X1 _093_ (
    .A(go),
    .B(addrIn[5]),
    .Y(_028_)
  );
  NAND2X1 _094_ (
    .A(go),
    .B(addrIn[6]),
    .Y(_029_)
  );
  DFFSR _095_ (
    .CLK(clk),
    .D(_001_),
    .Q(oSDA),
    .R(_006_),
    .S(_017_)
  );
  DFFSR _096_ (
    .CLK(clk),
    .D(_000_[0]),
    .Q(addr[0]),
    .R(_005_),
    .S(_018_)
  );
  DFFSR _097_ (
    .CLK(clk),
    .D(_000_[1]),
    .Q(addr[1]),
    .R(_004_),
    .S(_020_)
  );
  DFFSR _098_ (
    .CLK(clk),
    .D(_000_[2]),
    .Q(addr[2]),
    .R(_003_),
    .S(_022_)
  );
  DFFSR _099_ (
    .CLK(clk),
    .D(_000_[3]),
    .Q(addr[3]),
    .R(_002_),
    .S(_023_)
  );
  DFFSR _100_ (
    .CLK(clk),
    .D(_000_[4]),
    .Q(addr[4]),
    .R(_042_),
    .S(_026_)
  );
  DFFSR _101_ (
    .CLK(clk),
    .D(_000_[5]),
    .Q(addr[5]),
    .R(_025_),
    .S(_028_)
  );
  DFFSR _102_ (
    .CLK(clk),
    .D(_000_[6]),
    .Q(addr[6]),
    .R(_009_),
    .S(_029_)
  );
  DFFSR _103_ (
    .CLK(clk),
    .D(_000_[7]),
    .Q(addr[7]),
    .R(_007_),
    .S(1'b1)
  );
endmodule

module BIU(iSCL, oSDA, SCL, SDA, iSDA, en, clk);
  output SCL;
  inout SDA;
  output clk;
  input en;
  input iSCL;
  output iSDA;
  input oSDA;
  DFFPOSX1 _0_ (
    .CLK(iSCL),
    .D(SDA),
    .Q(iSDA)
  );
  DFFPOSX1 _1_ (
    .CLK(iSCL),
    .D(oSDA),
    .Q(SDA)
  );
  assign SCL = iSCL;
  assign clk = iSCL;
endmodule

module DU(clk, rst, dbit, go, Data, oSDA);
  wire [7:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  input [7:0] Data;
  input clk;
  input dbit;
  wire [7:0] dout;
  input go;
  output oSDA;
  input rst;
  NAND2X1 _046_ (
    .A(go),
    .B(Data[7]),
    .Y(_002_)
  );
  INVX1 _047_ (
    .A(Data[7]),
    .Y(_009_)
  );
  NAND2X1 _048_ (
    .A(go),
    .B(_009_),
    .Y(_008_)
  );
  INVX1 _049_ (
    .A(Data[6]),
    .Y(_011_)
  );
  NAND2X1 _050_ (
    .A(go),
    .B(_011_),
    .Y(_010_)
  );
  INVX1 _051_ (
    .A(Data[5]),
    .Y(_012_)
  );
  NAND2X1 _052_ (
    .A(go),
    .B(_012_),
    .Y(_023_)
  );
  INVX1 _053_ (
    .A(Data[4]),
    .Y(_013_)
  );
  NAND2X1 _054_ (
    .A(go),
    .B(_013_),
    .Y(_043_)
  );
  INVX1 _055_ (
    .A(Data[3]),
    .Y(_014_)
  );
  NAND2X1 _056_ (
    .A(go),
    .B(_014_),
    .Y(_003_)
  );
  INVX1 _057_ (
    .A(Data[2]),
    .Y(_015_)
  );
  NAND2X1 _058_ (
    .A(go),
    .B(_015_),
    .Y(_004_)
  );
  INVX1 _059_ (
    .A(Data[1]),
    .Y(_016_)
  );
  NAND2X1 _060_ (
    .A(go),
    .B(_016_),
    .Y(_005_)
  );
  INVX1 _061_ (
    .A(Data[0]),
    .Y(_017_)
  );
  NAND2X1 _062_ (
    .A(go),
    .B(_017_),
    .Y(_006_)
  );
  INVX2 _063_ (
    .A(rst),
    .Y(_018_)
  );
  NAND2X1 _064_ (
    .A(oSDA),
    .B(go),
    .Y(_019_)
  );
  OAI21X1 _065_ (
    .A(go),
    .B(_018_),
    .C(_019_),
    .Y(_007_)
  );
  INVX2 _066_ (
    .A(dout[1]),
    .Y(_020_)
  );
  NAND2X1 _067_ (
    .A(dout[2]),
    .B(dbit),
    .Y(_022_)
  );
  OAI21X1 _068_ (
    .A(dbit),
    .B(_020_),
    .C(_022_),
    .Y(_000_[1])
  );
  INVX2 _069_ (
    .A(dout[2]),
    .Y(_026_)
  );
  NAND2X1 _070_ (
    .A(dbit),
    .B(dout[3]),
    .Y(_028_)
  );
  OAI21X1 _071_ (
    .A(dbit),
    .B(_026_),
    .C(_028_),
    .Y(_000_[2])
  );
  INVX2 _072_ (
    .A(dout[3]),
    .Y(_031_)
  );
  NAND2X1 _073_ (
    .A(dbit),
    .B(dout[4]),
    .Y(_033_)
  );
  OAI21X1 _074_ (
    .A(dbit),
    .B(_031_),
    .C(_033_),
    .Y(_000_[3])
  );
  INVX2 _075_ (
    .A(dout[4]),
    .Y(_034_)
  );
  NAND2X1 _076_ (
    .A(dbit),
    .B(dout[5]),
    .Y(_035_)
  );
  OAI21X1 _077_ (
    .A(dbit),
    .B(_034_),
    .C(_035_),
    .Y(_000_[4])
  );
  INVX2 _078_ (
    .A(dout[5]),
    .Y(_036_)
  );
  NAND2X1 _079_ (
    .A(dbit),
    .B(dout[6]),
    .Y(_037_)
  );
  OAI21X1 _080_ (
    .A(dbit),
    .B(_036_),
    .C(_037_),
    .Y(_000_[5])
  );
  INVX2 _081_ (
    .A(dout[6]),
    .Y(_038_)
  );
  NAND2X1 _082_ (
    .A(dbit),
    .B(dout[7]),
    .Y(_039_)
  );
  OAI21X1 _083_ (
    .A(dbit),
    .B(_038_),
    .C(_039_),
    .Y(_000_[6])
  );
  INVX1 _084_ (
    .A(dout[7]),
    .Y(_040_)
  );
  NOR2X1 _085_ (
    .A(dbit),
    .B(_040_),
    .Y(_000_[7])
  );
  INVX2 _086_ (
    .A(oSDA),
    .Y(_041_)
  );
  NAND2X1 _087_ (
    .A(dbit),
    .B(dout[0]),
    .Y(_042_)
  );
  OAI21X1 _088_ (
    .A(dbit),
    .B(_041_),
    .C(_042_),
    .Y(_001_)
  );
  INVX2 _089_ (
    .A(dout[0]),
    .Y(_044_)
  );
  NAND2X1 _090_ (
    .A(dout[1]),
    .B(dbit),
    .Y(_045_)
  );
  OAI21X1 _091_ (
    .A(dbit),
    .B(_044_),
    .C(_045_),
    .Y(_000_[0])
  );
  NAND2X1 _092_ (
    .A(go),
    .B(Data[0]),
    .Y(_021_)
  );
  NAND2X1 _093_ (
    .A(go),
    .B(Data[1]),
    .Y(_024_)
  );
  NAND2X1 _094_ (
    .A(go),
    .B(Data[2]),
    .Y(_025_)
  );
  NAND2X1 _095_ (
    .A(go),
    .B(Data[3]),
    .Y(_027_)
  );
  NAND2X1 _096_ (
    .A(go),
    .B(Data[4]),
    .Y(_029_)
  );
  NAND2X1 _097_ (
    .A(go),
    .B(Data[5]),
    .Y(_030_)
  );
  NAND2X1 _098_ (
    .A(go),
    .B(Data[6]),
    .Y(_032_)
  );
  DFFSR _099_ (
    .CLK(clk),
    .D(_001_),
    .Q(oSDA),
    .R(_007_),
    .S(_019_)
  );
  DFFSR _100_ (
    .CLK(clk),
    .D(_000_[0]),
    .Q(dout[0]),
    .R(_006_),
    .S(_021_)
  );
  DFFSR _101_ (
    .CLK(clk),
    .D(_000_[1]),
    .Q(dout[1]),
    .R(_005_),
    .S(_024_)
  );
  DFFSR _102_ (
    .CLK(clk),
    .D(_000_[2]),
    .Q(dout[2]),
    .R(_004_),
    .S(_025_)
  );
  DFFSR _103_ (
    .CLK(clk),
    .D(_000_[3]),
    .Q(dout[3]),
    .R(_003_),
    .S(_027_)
  );
  DFFSR _104_ (
    .CLK(clk),
    .D(_000_[4]),
    .Q(dout[4]),
    .R(_043_),
    .S(_029_)
  );
  DFFSR _105_ (
    .CLK(clk),
    .D(_000_[5]),
    .Q(dout[5]),
    .R(_023_),
    .S(_030_)
  );
  DFFSR _106_ (
    .CLK(clk),
    .D(_000_[6]),
    .Q(dout[6]),
    .R(_010_),
    .S(_032_)
  );
  DFFSR _107_ (
    .CLK(clk),
    .D(_000_[7]),
    .Q(dout[7]),
    .R(_008_),
    .S(_002_)
  );
endmodule

module I2CBus(SCL, SDA, mclk, rst, go, addrIn, Data, done, success, enb, bitx);
  wire _0_;
  wire _1_;
  input [7:0] Data;
  output SCL;
  inout SDA;
  wire abit;
  input [6:0] addrIn;
  output bitx;
  wire busy;
  wire clk;
  wire dbit;
  output done;
  output enb;
  input go;
  wire iSCL;
  wire iSDA;
  input mclk;
  wire newcount;
  wire oSDA;
  wire oSDAau;
  wire oSDAdu;
  wire oSDAssu;
  input rst;
  wire [1:0] sel;
  output success;
  MUX2X1 _2_ (
    .A(oSDAau),
    .B(oSDAssu),
    .S(sel[0]),
    .Y(_0_)
  );
  NAND2X1 _3_ (
    .A(sel[1]),
    .B(oSDAdu),
    .Y(_1_)
  );
  OAI21X1 _4_ (
    .A(sel[1]),
    .B(_0_),
    .C(_1_),
    .Y(oSDA)
  );
  AU au (
    .abit(abit),
    .addrIn(addrIn),
    .clk(clk),
    .go(go),
    .oSDA(oSDAau),
    .rst(rst)
  );
  BIU biu (
    .SCL(SCL),
    .SDA(SDA),
    .clk(clk),
    .en(enb),
    .iSCL(iSCL),
    .iSDA(iSDA),
    .oSDA(oSDA)
  );
  counter cnt (
    .clk(clk),
    .newcount(newcount),
    .outcount(bitx),
    .rst(rst)
  );
  DU du (
    .Data(Data),
    .clk(clk),
    .dbit(dbit),
    .go(go),
    .oSDA(oSDAdu),
    .rst(rst)
  );
  MasterControl mc (
    .abit(abit),
    .bit8(bitx),
    .busy(busy),
    .clk(mclk),
    .dbit(dbit),
    .done(done),
    .en(enb),
    .go(go),
    .iSDA(iSDA),
    .newcount(newcount),
    .rst(rst),
    .sel(sel),
    .success(success)
  );
  SSU ssu (
    .busy(busy),
    .iSCL(iSCL),
    .mclk(mclk),
    .oSDA(oSDAssu),
    .rst(rst)
  );
endmodule

module MasterControl(clk, rst, iSDA, bit8, go, busy, newcount, dbit, abit, done, success, en, sel);
  wire _000_;
  wire _001_;
  wire [1:0] _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire [1:0] _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  output abit;
  input bit8;
  output busy;
  input clk;
  wire [1:0] cnt;
  wire countStarted;
  output dbit;
  output done;
  output en;
  input go;
  input iSDA;
  output newcount;
  input rst;
  output [1:0] sel;
  wire [6:0] state;
  output success;
  INVX1 _048_ (
    .A(state[5]),
    .Y(_017_)
  );
  INVX1 _049_ (
    .A(bit8),
    .Y(_018_)
  );
  INVX1 _050_ (
    .A(state[1]),
    .Y(_019_)
  );
  OAI22X1 _051_ (
    .A(cnt[1]),
    .B(_017_),
    .C(_018_),
    .D(_019_),
    .Y(_014_)
  );
  INVX1 _052_ (
    .A(state[6]),
    .Y(_020_)
  );
  INVX1 _053_ (
    .A(state[2]),
    .Y(_021_)
  );
  OAI22X1 _054_ (
    .A(cnt[1]),
    .B(_020_),
    .C(_018_),
    .D(_021_),
    .Y(_015_)
  );
  OAI21X1 _055_ (
    .A(state[5]),
    .B(state[6]),
    .C(cnt[1]),
    .Y(_022_)
  );
  INVX1 _056_ (
    .A(go),
    .Y(_023_)
  );
  NOR2X1 _057_ (
    .A(cnt[0]),
    .B(cnt[1]),
    .Y(_024_)
  );
  AOI22X1 _058_ (
    .A(_023_),
    .B(state[0]),
    .C(state[3]),
    .D(_024_),
    .Y(_025_)
  );
  OAI21X1 _059_ (
    .A(iSDA),
    .B(_022_),
    .C(_025_),
    .Y(_010_)
  );
  NAND2X1 _060_ (
    .A(cnt[1]),
    .B(iSDA),
    .Y(_026_)
  );
  OAI22X1 _061_ (
    .A(bit8),
    .B(_019_),
    .C(_020_),
    .D(_026_),
    .Y(_011_)
  );
  INVX1 _062_ (
    .A(state[4]),
    .Y(_027_)
  );
  OAI21X1 _063_ (
    .A(bit8),
    .B(_021_),
    .C(_027_),
    .Y(_012_)
  );
  INVX1 _064_ (
    .A(state[3]),
    .Y(_028_)
  );
  OAI22X1 _065_ (
    .A(_017_),
    .B(_026_),
    .C(_028_),
    .D(_024_),
    .Y(_013_)
  );
  NOR3X1 _066_ (
    .A(state[5]),
    .B(state[6]),
    .C(state[3]),
    .Y(_029_)
  );
  NOR3X1 _067_ (
    .A(state[2]),
    .B(state[0]),
    .C(state[1]),
    .Y(_030_)
  );
  NAND3X1 _068_ (
    .A(cnt[0]),
    .B(_029_),
    .C(_030_),
    .Y(_031_)
  );
  OAI21X1 _069_ (
    .A(cnt[0]),
    .B(_029_),
    .C(_031_),
    .Y(_002_[0])
  );
  XNOR2X1 _070_ (
    .A(cnt[0]),
    .B(cnt[1]),
    .Y(_032_)
  );
  NAND3X1 _071_ (
    .A(cnt[1]),
    .B(_029_),
    .C(_030_),
    .Y(_033_)
  );
  OAI21X1 _072_ (
    .A(_029_),
    .B(_032_),
    .C(_033_),
    .Y(_002_[1])
  );
  NAND3X1 _073_ (
    .A(sel[0]),
    .B(_027_),
    .C(_019_),
    .Y(_034_)
  );
  INVX2 _074_ (
    .A(state[0]),
    .Y(_035_)
  );
  NOR2X1 _075_ (
    .A(state[5]),
    .B(state[6]),
    .Y(_036_)
  );
  NAND2X1 _076_ (
    .A(_035_),
    .B(_036_),
    .Y(_037_)
  );
  INVX1 _077_ (
    .A(_037_),
    .Y(_038_)
  );
  NAND3X1 _078_ (
    .A(_021_),
    .B(_034_),
    .C(_038_),
    .Y(_007_[0])
  );
  NAND3X1 _079_ (
    .A(sel[1]),
    .B(_021_),
    .C(_027_),
    .Y(_039_)
  );
  NAND3X1 _080_ (
    .A(_019_),
    .B(_039_),
    .C(_038_),
    .Y(_007_[1])
  );
  INVX1 _081_ (
    .A(countStarted),
    .Y(_040_)
  );
  NOR2X1 _082_ (
    .A(state[2]),
    .B(state[1]),
    .Y(_041_)
  );
  OAI21X1 _083_ (
    .A(_040_),
    .B(_037_),
    .C(_041_),
    .Y(_003_)
  );
  INVX1 _084_ (
    .A(success),
    .Y(_042_)
  );
  OAI21X1 _085_ (
    .A(state[0]),
    .B(_042_),
    .C(_028_),
    .Y(_008_)
  );
  INVX1 _086_ (
    .A(abit),
    .Y(_043_)
  );
  OAI21X1 _087_ (
    .A(_043_),
    .B(_037_),
    .C(_021_),
    .Y(_000_)
  );
  INVX1 _088_ (
    .A(dbit),
    .Y(_044_)
  );
  OAI21X1 _089_ (
    .A(state[0]),
    .B(_044_),
    .C(_019_),
    .Y(_004_)
  );
  NAND2X1 _090_ (
    .A(newcount),
    .B(_030_),
    .Y(_045_)
  );
  OAI21X1 _091_ (
    .A(countStarted),
    .B(_041_),
    .C(_045_),
    .Y(_006_)
  );
  NAND2X1 _092_ (
    .A(busy),
    .B(_028_),
    .Y(_046_)
  );
  OAI21X1 _093_ (
    .A(state[0]),
    .B(_046_),
    .C(_027_),
    .Y(_001_)
  );
  AOI21X1 _094_ (
    .A(_024_),
    .B(state[3]),
    .C(done),
    .Y(_047_)
  );
  OAI21X1 _095_ (
    .A(iSDA),
    .B(_022_),
    .C(_047_),
    .Y(_005_)
  );
  AND2X2 _096_ (
    .A(_035_),
    .B(done),
    .Y(_009_)
  );
  NOR2X1 _097_ (
    .A(_023_),
    .B(_035_),
    .Y(_016_)
  );
  DFFPOSX1 _098_ (
    .CLK(clk),
    .D(_005_),
    .Q(done)
  );
  DFFSR _099_ (
    .CLK(clk),
    .D(_006_),
    .Q(newcount),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _100_ (
    .CLK(clk),
    .D(_001_),
    .Q(busy),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _101_ (
    .CLK(clk),
    .D(_004_),
    .Q(dbit),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _102_ (
    .CLK(clk),
    .D(_000_),
    .Q(abit),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _103_ (
    .CLK(clk),
    .D(_009_),
    .Q(done),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _104_ (
    .CLK(clk),
    .D(_008_),
    .Q(success),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _105_ (
    .CLK(clk),
    .D(_007_[0]),
    .Q(sel[0]),
    .R(1'b1),
    .S(rst)
  );
  DFFSR _106_ (
    .CLK(clk),
    .D(_007_[1]),
    .Q(sel[1]),
    .R(1'b1),
    .S(rst)
  );
  DFFSR _107_ (
    .CLK(clk),
    .D(_003_),
    .Q(countStarted),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _108_ (
    .CLK(clk),
    .D(_002_[0]),
    .Q(cnt[0]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _109_ (
    .CLK(clk),
    .D(_002_[1]),
    .Q(cnt[1]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _110_ (
    .CLK(clk),
    .D(_010_),
    .Q(state[0]),
    .R(1'b1),
    .S(rst)
  );
  DFFSR _111_ (
    .CLK(clk),
    .D(_011_),
    .Q(state[1]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _112_ (
    .CLK(clk),
    .D(_012_),
    .Q(state[2]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _113_ (
    .CLK(clk),
    .D(_013_),
    .Q(state[3]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _114_ (
    .CLK(clk),
    .D(_016_),
    .Q(state[4]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _115_ (
    .CLK(clk),
    .D(_014_),
    .Q(state[5]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _116_ (
    .CLK(clk),
    .D(_015_),
    .Q(state[6]),
    .R(rst),
    .S(1'b1)
  );
  assign en = 1'b0;
endmodule

module SSU(busy, mclk, rst, iSCL, oSDA);
  wire _00_;
  wire [2:0] _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  input busy;
  output iSCL;
  input mclk;
  wire [2:0] next_state;
  output oSDA;
  input rst;
  wire [2:0] state;
  OR2X2 _18_ (
    .A(next_state[0]),
    .B(next_state[2]),
    .Y(_04_)
  );
  INVX1 _19_ (
    .A(iSCL),
    .Y(_05_)
  );
  AOI21X1 _20_ (
    .A(next_state[0]),
    .B(next_state[2]),
    .C(next_state[1]),
    .Y(_06_)
  );
  NAND2X1 _21_ (
    .A(_05_),
    .B(_06_),
    .Y(_07_)
  );
  OR2X2 _22_ (
    .A(next_state[1]),
    .B(next_state[2]),
    .Y(_08_)
  );
  OR2X2 _23_ (
    .A(next_state[1]),
    .B(next_state[0]),
    .Y(_09_)
  );
  NAND3X1 _24_ (
    .A(iSCL),
    .B(_08_),
    .C(_09_),
    .Y(_10_)
  );
  NAND3X1 _25_ (
    .A(_04_),
    .B(_07_),
    .C(_10_),
    .Y(_00_)
  );
  OAI21X1 _26_ (
    .A(next_state[0]),
    .B(next_state[2]),
    .C(oSDA),
    .Y(_11_)
  );
  OAI21X1 _27_ (
    .A(next_state[1]),
    .B(next_state[2]),
    .C(_11_),
    .Y(_12_)
  );
  AND2X2 _28_ (
    .A(_12_),
    .B(_09_),
    .Y(_02_)
  );
  AOI21X1 _29_ (
    .A(state[2]),
    .B(state[0]),
    .C(state[1]),
    .Y(_13_)
  );
  OAI21X1 _30_ (
    .A(state[2]),
    .B(state[0]),
    .C(_13_),
    .Y(_14_)
  );
  AND2X1 _31_ (
    .A(_14_),
    .B(busy),
    .Y(_01_[0])
  );
  NOR2X1 _32_ (
    .A(state[2]),
    .B(state[0]),
    .Y(_15_)
  );
  NAND2X1 _33_ (
    .A(state[1]),
    .B(_15_),
    .Y(_16_)
  );
  AOI21X1 _34_ (
    .A(_14_),
    .B(_16_),
    .C(busy),
    .Y(_01_[1])
  );
  INVX1 _35_ (
    .A(busy),
    .Y(_17_)
  );
  NOR2X1 _36_ (
    .A(_17_),
    .B(_14_),
    .Y(_01_[2])
  );
  OR2X2 _37_ (
    .A(_13_),
    .B(_15_),
    .Y(_03_)
  );
  DFFSR _38_ (
    .CLK(mclk),
    .D(_00_),
    .Q(iSCL),
    .R(1'b1),
    .S(rst)
  );
  DFFSR _39_ (
    .CLK(mclk),
    .D(_02_),
    .Q(oSDA),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _40_ (
    .CLK(mclk),
    .D(next_state[0]),
    .Q(state[0]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _41_ (
    .CLK(mclk),
    .D(next_state[1]),
    .Q(state[1]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _42_ (
    .CLK(mclk),
    .D(next_state[2]),
    .Q(state[2]),
    .R(rst),
    .S(1'b1)
  );
  \$_DLATCH_P_  _43_ (
    .D(_01_[0]),
    .E(_03_),
    .Q(next_state[0])
  );
  \$_DLATCH_P_  _44_ (
    .D(_01_[1]),
    .E(_03_),
    .Q(next_state[1])
  );
  \$_DLATCH_P_  _45_ (
    .D(_01_[2]),
    .E(_03_),
    .Q(next_state[2])
  );
endmodule

module counter(clk, rst, newcount, outcount);
  wire [2:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  input clk;
  wire [2:0] counter;
  wire en;
  input newcount;
  output outcount;
  input rst;
  NAND3X1 _12_ (
    .A(counter[2]),
    .B(counter[0]),
    .C(counter[1]),
    .Y(_02_)
  );
  INVX1 _13_ (
    .A(_02_),
    .Y(outcount)
  );
  AND2X2 _14_ (
    .A(en),
    .B(counter[0]),
    .Y(_03_)
  );
  INVX2 _15_ (
    .A(newcount),
    .Y(_04_)
  );
  OAI21X1 _16_ (
    .A(en),
    .B(counter[0]),
    .C(_04_),
    .Y(_05_)
  );
  NOR2X1 _17_ (
    .A(_03_),
    .B(_05_),
    .Y(_00_[0])
  );
  OAI21X1 _18_ (
    .A(counter[1]),
    .B(_03_),
    .C(_04_),
    .Y(_06_)
  );
  AOI21X1 _19_ (
    .A(counter[1]),
    .B(_03_),
    .C(_06_),
    .Y(_00_[1])
  );
  INVX8 _20_ (
    .A(counter[2]),
    .Y(_07_)
  );
  NAND3X1 _21_ (
    .A(_07_),
    .B(counter[1]),
    .C(_03_),
    .Y(_08_)
  );
  NAND3X1 _22_ (
    .A(en),
    .B(counter[0]),
    .C(counter[1]),
    .Y(_09_)
  );
  NAND2X1 _23_ (
    .A(counter[2]),
    .B(_09_),
    .Y(_10_)
  );
  AOI21X1 _24_ (
    .A(_08_),
    .B(_10_),
    .C(newcount),
    .Y(_00_[2])
  );
  INVX1 _25_ (
    .A(en),
    .Y(_11_)
  );
  OAI21X1 _26_ (
    .A(_11_),
    .B(outcount),
    .C(_04_),
    .Y(_01_)
  );
  DFFSR _27_ (
    .CLK(clk),
    .D(_00_[0]),
    .Q(counter[0]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _28_ (
    .CLK(clk),
    .D(_00_[1]),
    .Q(counter[1]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _29_ (
    .CLK(clk),
    .D(_00_[2]),
    .Q(counter[2]),
    .R(rst),
    .S(1'b1)
  );
  DFFSR _30_ (
    .CLK(clk),
    .D(_01_),
    .Q(en),
    .R(rst),
    .S(1'b1)
  );
endmodule
