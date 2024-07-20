module enc4x2(input i0,i1,i2,i3,output reg y1,y0);

always@(*)
case ({i3,i2,i1,i0})

4'b0000 : {y1,y0}=2'b00;
4'b0001 : {y1,y0}=2'b00;
4'b0010 : {y1,y0}=2'b01;
4'b0100 : {y1,y0}=2'b10;
4'b1000 : {y1,y0}=2'b11;

endcase

endmodule