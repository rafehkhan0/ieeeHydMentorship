module mux4x1(a,s,y);

input [3:0]a;
input [1:0]s;
output y;

mux2x1 m1(a[3],a[2],s[0],y1);
mux2x1 m2(a[1],a[0],s[0],y2);
mux2x1 m3(y1,y2,s[1],y); 

endmodule
