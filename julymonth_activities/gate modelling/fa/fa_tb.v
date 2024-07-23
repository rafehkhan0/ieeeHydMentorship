`timescale 1ns/1ps
module fa_tb;
reg a,b,cin;
wire s,co;
fa dut(a,b,cin,s,co);
initial 
begin
$monitor("@time %gns a=%b b=%b cin=%b sum=%b co=%b",$time,a,b,cin,s,co);
#1;
a=0;b=0;cin=0;
#1;
a=0;b=0;cin=1;
#1;
a=0;b=1;cin=0;
#1;
a=0;b=1;cin=1;
#1;
a=1;b=0;cin=0;
#1;
a=1;b=0;cin=1;
#1;
a=1;b=1;cin=0;
#1;
a=1;b=1;cin=1;
#1;
$stop;
end
endmodule
