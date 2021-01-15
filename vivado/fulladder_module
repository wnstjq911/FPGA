module fulladd (a, b, ci, sum, co);
    input a;
    input b;
    input ci;
    output sum;
    output co;

    wire w1, w2, w3;

    assign w1 = a ^ b;
    assign sum = w1 ^ ci;
    assign w2 = w1 & ci;
    assign w3 = a & b;
    assign co = w2 | w3;

endmodule
