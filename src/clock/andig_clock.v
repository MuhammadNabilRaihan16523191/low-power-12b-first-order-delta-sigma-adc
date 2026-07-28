module andig_clock (
  input wire in_clk,
  input wire rst,
  output reg out_clk1,
  output reg out_clk2,
  output wire out_clk2B,
  output reg out_clk_cic
);
  reg [2:0] counter;
  assign out_clk2B = ~out_clk2;
  always @(posedge in_clk or negedge rst) begin
    if (!rst) begin
      counter <= 3'b0;
      out_clk1 <= 1'b1;
      out_clk2 <= 1'b0;
      out_clk_cic <= 1'b0;
    end else begin
      if (counter <= 3'b001) begin
        out_clk1 <= 1'b1;
        out_clk2 <= 1'b0;
        out_clk_cic <= 1'b0;
        counter <= counter + 3'b1;
      end else if (counter == 3'b010) begin
        out_clk1 <= 1'b0;
        out_clk2 <= 1'b0;
        out_clk_cic <= 1'b0;
        counter <= counter + 3'b1;
      end else if (counter == 3'b011 || counter == 3'b100) begin
        out_clk1 <= 1'b0;
        out_clk2 <= 1'b1;
        out_clk_cic <= 1'b1;
        counter <= counter + 3'b1;
      end else if (counter == 3'b101) begin
        out_clk1 <= 1'b0;
        out_clk2 <= 1'b0;
        out_clk_cic <= 1'b1;
        counter <= 3'b0;
      end else begin
        counter <= 3'b0;
      end
    end
  end
endmodule
