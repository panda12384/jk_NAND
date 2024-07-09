module jk_NAND(j,k,clk,Q,rst,Qb,set);
input j,k,clk,set,rst;
output Q,Qb;
wire [6:0]t;
not g1(t[0],clk);
nand g2(t[1],Qb,j,clk);
nand g3(t[2],Q,k,clk);
nand g4(t[3],t[1],t[4]);
nand g5(t[4],t[2],t[3]);
nand g6(t[5],t[3],t[0]);
nand g7(t[6],t[4],t[0]);
nand g8(Q,t[5],Qb,set);
nand g9(Qb,Q,t[6],rst);
endmodule
