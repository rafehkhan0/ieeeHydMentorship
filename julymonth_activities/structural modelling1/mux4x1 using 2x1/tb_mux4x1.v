`timescale 1ns/1ps
module tb_mux4x1;

reg [3:0]a;
reg [1:0]s;

wire y;

mux4x1 dut(a,s,y);

initial 
begin

$monitor("@time %gns a=%b, b=%b, c=%b, d=%b, s[1]=%b, s0=%b, y=%b",$time,a[3],a[2],a[1],a[0],s[1],s[0],y);


a[3]=1;a[2]=0;a[1]=0;a[0]=0;s[1]=0;s[0]=0;
#5;
a[3]=0;a[2]=1;a[1]=0;a[0]=0;s[1]=0;s[0]=1;
#5;
a[3]=0;a[2]=0;a[1]=1;a[0]=0;s[1]=1;s[0]=0;
#5;
a[3]=0;a[2]=0;a[1]=0;a[0]=1;s[1]=1;s[0]=1;
#5;
a[3]=0;a[2]=1;a[1]=1;a[0]=1;s[1]=0;s[0]=0;
#5;
$stop;
end
endmodule