`timescale 1ns/1ps
module tb_hs;
reg a,b;
wire diff,borr;
hs dut(a,b,diff,borr);
initial
begin
$monitor("@time %gns: a=%b, b=%b, diff=%b, borr=%b",$time,a,b,diff,borr);

a=($unsigned($random))%4;
b=($unsigned($random))%4;
end

endmodule