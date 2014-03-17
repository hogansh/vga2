module grayscale(input [9:0] px, input [9:0] py, output [29:0] rgb);

wire [9:0] gray = (px<80 || px>560? 10'h000:
    (py/15)<<5 | (px-80)/15);
assign rgb = {gray, gray, gray};

endmodule

