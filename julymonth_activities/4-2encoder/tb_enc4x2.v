`timescale 1ns/1ps

module tb_enc4x2;

reg a0,a1,a2,a3;
wire y1,y0;

enc4x2 dut(a0,a1,a2,a3,y1,y0);

initial

begin

$monitor("@time %gns d0=%b d1=%b d2=%b d3=%b y0=%b y1=%b ",$time,a0,a1,a2,a3,y0,y1);

a3=0;a2=0;a1=0;a0=1;
#5;
a3=0;a2=0;a1=1;a0=0;
#5;
a3=0;a2=1;a1=0;a0=0;
#5;
a3=1;a2=0;a1=0;a0=0;
#5;
$stop;
end
endmodule