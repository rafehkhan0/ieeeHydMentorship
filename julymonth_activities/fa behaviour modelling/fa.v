module fa(input a,b,cin,output reg s,co);

always@*
begin
s=a^b^cin;
co=a&b | b&cin | a&cin;
end
endmodule

