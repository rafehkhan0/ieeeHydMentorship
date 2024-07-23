module ha(a,b,sum,co);

input a,b;
output reg sum,co;

always@*
begin

 sum=a^b;
 co=a&b;

end
endmodule