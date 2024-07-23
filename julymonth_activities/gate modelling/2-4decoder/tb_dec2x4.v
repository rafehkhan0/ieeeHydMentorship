`timescale 1ns/1ps

module tb_dec2x4;

reg a0,a1;
wire d0,d1,d2,d3;

dec2x4 dut(a0,a1,d0,d1,d2,d3);

initial

begin

$monitor("@time %gns a0=%b a1=%b d0=%b d1=%b d2=%b d3=%b ",$time,a0,a1,d0,d1,d2,d3);

a0=0;a1=0;
#5;
a0=0;a1=1;
#5;
a0=1;a1=0;
#5;
a0=1;a1=1;
#5;

$stop;

end
endmodule

