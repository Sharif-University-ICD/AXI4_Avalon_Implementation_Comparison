module mult #(
    parameter int SZ = 32
) (
    input clk,
    input _rst,
    input [SZ-1:0] a,
    input [SZ-1:0] b,
    input start,
    output reg [2*SZ-1:0] res,
    output reg ready
);

    reg [  SZ-1:0] areg;
    reg [2*SZ-1:0] breg;

    always @(clk, _rst) begin
        if (_rst) begin
            res   <= 0;
            ready <= 0;
            areg  <= a;
            breg  <= {{SZ{1'b0}}, b};
        end
        else begin
            if (start) begin
                res   <= 0;
                ready <= 0;
            end
            else begin

            end
        end
    end

endmodule
