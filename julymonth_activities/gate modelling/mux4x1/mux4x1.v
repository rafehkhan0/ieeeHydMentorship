module mux4x1(input a,b,c,d,s1,s2,output y);

not (s1bar,s1);
not (s2bar,s2);
and (w1,a,s1bar,s2bar);
and (w2,b,s1bar,s2);
and (w3,c,s1,s2bar);
and (w4,d,s1,s2);
or (y,w1,w2,w3,w4);

endmodule


