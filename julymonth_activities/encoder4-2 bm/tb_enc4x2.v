`timescale 1ns/1ps

module tb_enc4x2;

reg a0,a1,a2,a3;
wire y1,y0;

enc4x2 dut(a0,a1,a2,a3,y1,y0);

initial

begin

$monitor("@time %gns i3=%b i2=%b i1=%b i0=%b y1=%b y0=%b ",$time,a3,a2,a1,a0,y1,y0);
{a3,a2,a1,a0}=4'b0000;
#5;
{a3,a2,a1,a0}=4'b0001;
#5;
{a3,a2,a1,a0}=4'b0010;
#5;
{a3,a2,a1,a0}=4'b0100;
#5;
{a3,a2,a1,a0}=4'b1000;
#5;

$stop;
end
endmodule