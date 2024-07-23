module mux2x1(a,b,s,y);

input a,b,s;
output reg y;
always@*
begin

y=s?b:a;

end
endmodule