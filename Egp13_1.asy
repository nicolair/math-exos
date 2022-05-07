settings.outformat = "pdf";
//import graph;
size(6cm);

pen Vert = deepgreen+3;
pen vert = deepgreen+1;
pen Rouge = red+4;
pen rouge = red+1;

real a=2;
real b=1;
real l1=a*b/(a^2+b^2);

pair A=(0,0);
pair B=(a,0);
pair C=(a,b);
pair D=(0,b);
pair N=D + l1*(b,-a);
pair M=B - l1*(b,-a);


draw(A--B--C--D--cycle,vert);
draw(A--C);
draw(D--N,dashed);
draw(B--M,dashed);

dot(A,Rouge);
dot(B,Rouge);
dot(C,Rouge);
dot(D,Rouge);
dot(M,Rouge);
dot(N,Rouge);

label("$A$",A,NW);
label("$B$",B,NE);
label("$C$",C,NE);
label("$D$",D,NW);
label("$a$",(A+B)/2,S);
label("$b$",(B+C)/2,E);
label("$M$",M,(-0.3,0.2));
label("$N$",N,SE);
