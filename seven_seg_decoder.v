module seven_seg_decoder(z,y,x,w,a,b,c,d,e,f,g);
input z, y, x, w;
output a, b, c, d, e, f, g;
reg a, b, c, d, e, f, g;

always@(z or y or x or w)
begin
	case({z,y,x,w})
	4'b0000: {a,b,c,d,e,f,g}=7'b0000001;
	4'b0001: {a,b,c,d,e,f,g}=7'b1001111;
	4'b0010: {a,b,c,d,e,f,g}=7'b0010010;
	4'b0011: {a,b,c,d,e,f,g}=7'b0000110;
	4'b0100: {a,b,c,d,e,f,g}=7'b1001100;

	4'b0101: {a,b,c,d,e,f,g}=7'b0100100;
	4'b0110: {a,b,c,d,e,f,g}=7'b0100000;
	4'b0111: {a,b,c,d,e,f,g}=7'b0001111;
	4'b1000: {a,b,c,d,e,f,g}=7'b0000000;
	4'b1001: {a,b,c,d,e,f,g}=7'b0000100;

	4'b1010: {a,b,c,d,e,f,g}=7'b0001000;
	4'b1011: {a,b,c,d,e,f,g}=7'b1100000;
	4'b1100: {a,b,c,d,e,f,g}=7'b0110001;
	4'b1101: {a,b,c,d,e,f,g}=7'b1000010;
	4'b1110: {a,b,c,d,e,f,g}=7'b0110000;

	4'b1111: {a,b,c,d,e,f,g}=7'b0111000;
endcase
end

endmodule
