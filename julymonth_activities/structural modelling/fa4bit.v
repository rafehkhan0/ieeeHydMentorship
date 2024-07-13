module fa4bit(a,b,sum,co);
input [3:0]a,b;
output [3:0]sum;
output co;

fa ins1(a[0],b[0],1'b0,sum[0],c1);
fa ins2(a[1],b[1],c1,sum[1],c2);
fa ins3(a[2],b[2],c2,sum[2],c3);
fa ins4(a[3],b[3],c3,sum[3],co);

endmodule



