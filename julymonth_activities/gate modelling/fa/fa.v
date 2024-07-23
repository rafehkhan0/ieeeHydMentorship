module fa(input a,b,cin,output s,co);


xor (w1,a,b);

xor (s,w1,cin);

and (w2,a,b);

and (w3,a,cin);

and (w4,b,cin);

or (w5,w2,w3);

or (co,w4,w5);

endmodule

