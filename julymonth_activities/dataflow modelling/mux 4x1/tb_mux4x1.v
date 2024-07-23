`timescale 1ns/1ps
module tb_mux4x1;

reg [3:0]i;
reg [1:0]s;
wire y;

mux4x1 dut(i,s,y);

initial
begin
$monitor("@time %gns i=%b, s=%b, y=%b",$time,i,s,y);

i=4'b0101;s=2'b00;
#5;
s=2'b01;
#5;
s=2'b10;
#5;
s=2'b11;
#5;
i=4'b1010;s=2'b00;
#5;
s=2'b01;
#5;
s=2'b10;
#5;
s=2'b11;
#5
$stop;
end
endmodule
