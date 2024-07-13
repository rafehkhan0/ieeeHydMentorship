`timescale 1ns/1ps
module tb_fa4bit;
reg [3:0]a,b;
wire [3:0]sum;
wire co;

fa4bit dut(a,b,sum,co);

initial

begin

$monitor("@time %gns: a=%b, b=%b, co=%b, sum=%b",$time,a,b,co,sum);

repeat(10)
begin

a=($unsigned($random))%16;
b=($unsigned($random))%16;
#5;

end
#5;
$stop;

end

endmodule