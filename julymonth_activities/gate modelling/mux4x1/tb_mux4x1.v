`timescale 1ns/1ps
module tb_mux4x1;
reg a,b,c,d,s1,s2;
wire y;

mux4x1 dut(a,b,c,d,s1,s2,y);

initial

begin 

$monitor("@time %gns a=%b, b=%b, c=%b, d=%b, s1=%b, s2=%b, y=%b",$time,a,b,c,d,s1,s2,y);

a=1;b=0;c=0;d=0;s1=0;s2=0;
#5;
a=0;b=1;c=0;d=0;s1=0;s2=1;
#5;
a=0;b=0;c=1;d=0;s1=1;s2=0;
#5;
a=0;b=0;c=0;d=1;s1=1;s2=1;
#5;
a=0;b=1;c=1;d=1;s1=0;s2=0;
#5;

$stop;
end 
endmodule

