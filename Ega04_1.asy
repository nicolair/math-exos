settings.outformat = "pdf";
//import graph;
size(9cm);

pen Vert = deepgreen+3;
pen vert = deepgreen+1;
pen Rouge = red+4;
pen rouge = red+1;

real a=2;
real b=0.8;
real alpha=0.4;
real beta=0.3;
real gamma=0.8;

pair A=(0.5*a,1.2*b);
pair B=(0,0);
pair C=(a,b);
pair L=B+alpha*(C-B);
pair M=C+beta*(A-C);
pair N=B+gamma*(A-B);

draw(1.4*A-0.4*B--(-0.4*A+1.4*B),vert);
draw(1.3*B-0.3*C--(-0.3*B+1.3*C),vert);
draw(1.4*C-0.4*A--(-0.3*C+1.3*A),vert);

dot(A,Rouge);
dot(B,Rouge);
dot(C,Rouge);
dot(L,Rouge);
dot(M,Rouge);
dot(N,Rouge);

label("$A$",A,NW);
label("$B$",B,NW);
label("$C$",C,S);
label("$L$",L,NW);
label("$M$",M,NE);
label("$N$",N,SE);
