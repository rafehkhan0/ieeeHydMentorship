module mux2x1(input a,b,s,output y);

assign y=(a&~s)|(b&s);

endmodule