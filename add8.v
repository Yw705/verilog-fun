`include "full_add.v"
adder [full_add](a, b, c, x);

module add8(
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire [8:0] x
);
    wire [1:0] d;
    adder a0 (a[0],b[0],0,d);
    wire [1:0] e;
    adder a1 (a[1],b[1],d[1],e)
    wire [1:0] f;
    adder a2 (a[2],b[2],e[1],f) 
    wire [1:0] g;
    adder a3 (a[3],b[3],f[1],g) 
    wire [1:0] f;
    adder a4 (a[4],b[4],g[1],f) 
    wire [1:0] i;
    adder a5 (a[5],b[5],f[1],i) 
    wire [1:0] j;
    adder a6 (a[6],b[6],i[1],j) 
    wire [1:0] k;
    adder a7 (a[7],b[7],j[1],k) 
    assign x = (d, e, f, g, h, i, j, k)