module seg(
  input [3:0] num0,
  input [3:0] num1,
  input [3:0] num2,
  input [3:0] num3,
  input [3:0] num4,
  input [3:0] num5,
  input [3:0] num6,
  input [3:0] num7,
  output [7:0] o_seg0,
  output [7:0] o_seg1,
  output [7:0] o_seg2,
  output [7:0] o_seg3,
  output [7:0] o_seg4,
  output [7:0] o_seg5,
  output [7:0] o_seg6,
  output [7:0] o_seg7
);

wire [7:0] segs [15:0];
assign segs[0] = 8'b11111101;
assign segs[1] = 8'b01100000;
assign segs[2] = 8'b11011010;
assign segs[3] = 8'b11110010;
assign segs[4] = 8'b01100110;
assign segs[5] = 8'b10110110;
assign segs[6] = 8'b10111110;
assign segs[7] = 8'b11100000;
assign segs[8] = 8'b11111111;
assign segs[9] = 8'b11110111;
assign segs[10] = 8'b00000000;
assign segs[11] = 8'b00000000;
assign segs[12] = 8'b00000000;
assign segs[13] = 8'b00000000;
assign segs[14] = 8'b00000000;
assign segs[15] = 8'b00000000;

assign o_seg0 = ~segs[num0];
assign o_seg1 = ~segs[num1];
assign o_seg2 = ~segs[num2];
assign o_seg3 = ~segs[num3];
assign o_seg4 = ~segs[num4];
assign o_seg5 = ~segs[num5];
assign o_seg6 = ~segs[num6];
assign o_seg7 = ~segs[num7];

endmodule
