module gate(
    input A,
    input B,
    input C,
    input D,
    output reg Y  
);

always @(A,B,C,D)
begin 
    Y = ~(A|B) ^ (C&D);
end

endmodule
