import three;
import math;
texpreamble("\usepackage{bm}");

size(300,0);

pen thickp=dashed+deepgreen+linewidth(0.5mm);
pen vert = deepgreen+2;
pen Rouge = red+4;

real radius=1, theta=37, phi=60;
real thetaA=27, phiA=60;
real thetaB=45, phiB=-35;

currentprojection=orthographic((4,1,2));

// draw(octant1,material(palegreen+opacity(0.25),shininess=0.5));
draw(unitsphere,material(palegreen+opacity(0.3),shininess=0.5));

real r=1.6;
//pen p=dashed+black;
//draw(Label("$x$",1),O--r*X,p,Arrow3);
//draw(Label("$y$",1),O--r*Y,p,Arrow3);
//draw(Label("$z$",1),O--r*Z,p,Arrow3);
label("$\rm O$",(0,0,0),-1.5Y-X);

// triple Q=radius*dir(theta,phi);

triple A=radius*dir(thetaA,phiA);
dot(A,Rouge);
label("$A$",A+(0,0,0.1));

triple B=radius*dir(thetaB,phiB);
dot(B,Rouge);
label("$B$",B+(0.2,0,0.2));


real gamma = aSin(length(cross(A,B)));
real AN = Sin(20);
real BN = Sin(gamma - AN);
triple N = unit(AN*B + BN*A);
dot(N,Rouge);
label("$N$",N+(0,0,0.1));

//draw(arc(O,radius,thetaA,phiA,thetaB,phiB),vert);
draw(circle(O,radius,cross(A,B)),vert);
draw(O--r*A,Arrow3);
draw(O--r*B,Arrow3);
draw(O--N);

draw("$\widehat{NB}$",arc(O,0.5*N,0.5*B),Arrow3);
draw("$\widehat{NA}$",arc(O,0.7*N,0.7*A),Arrow3);
