module bars(input [9:0] x, input [9:0] y, output [29:0] rgb);
reg [2:0] idx;
always @(x, y)
begin
    if (x < 160  && y < 160) idx <= 3'd1;
    else if (x < 160 && y < 160) idx <= 3'd2;
	 //else if (x < 320 && y < 160) idx <= 3'd1;
	 else if (x < 320 && y < 320) idx <= 3'd2;
    //else if (x < 240) idx <= 3'd2;
    //else if (x < 320) idx <= 3'd3;
    //else if (x < 400) idx <= 3'd4;
    //else if (x < 480) idx <= 3'd5;
    //else if (x < 560) idx <= 3'd6;
    //else idx <= 3'd7;
end
assign rgb[29:20] = (idx[0]? 10'h3ff: 10'h000);
assign rgb[19:10] = (idx[1]? 10'h3ff: 10'h000);
assign rgb[9:0] = (idx[2]? 10'h3ff: 10'h000);

endmodule