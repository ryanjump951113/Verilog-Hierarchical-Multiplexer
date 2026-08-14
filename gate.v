module gate(
    input A,
    input B,
    input C,
    input D,
    output reg Y  // 這裡同時宣告為 output 和 reg
);

always @(A,B,C,D)
begin 
    Y = ~(A|B) ^ (C&D);
end

endmodule