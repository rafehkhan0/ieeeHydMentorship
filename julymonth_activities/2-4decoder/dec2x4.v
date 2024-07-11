module dec2x4(input a0,a1,output d0,d1,d2,d3);

not (a0bar,a0);
not (a1bar,a1);

and (d0,a1bar,a0bar);
and (d2,a1bar,a0);
and (d1,a1,a0bar);
and (d3,a1,a0);

endmodule