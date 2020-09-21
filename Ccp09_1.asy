settings.outformat = "pdf";

size(5cm);

real alpha = 0.2;
real beta = 1.8;
real gamma = 3.8;

pair O = (0,0);
pair A = (cos(alpha),sin(alpha));
pair B = (cos(beta),sin(beta));
pair C = (cos(gamma),sin(gamma));

pair H = A + B + C;
transform Sa = reflect(B,C);
transform Sb = reflect(C,A);
transform Sc = reflect(A,B);

pair Ha = Sa * H;
pair Hb = Sb * H;
pair Hc = Sc * H;

draw(A--B--C--A, deepgreen+1);
draw(circle(O,1));

dot(O);
dot(A, deepgreen+4);
dot(B, deepgreen+4);
dot(C, deepgreen+4);
dot(H);

dot(Ha, deepred+4);dot(Hb, deepred+4);dot(Hc, deepred+4);

label('$O$',O,N);
label('$A$',A,E);
label('$B$',B,N);
label('$C$',C,SW);
label('$H$',H,N);