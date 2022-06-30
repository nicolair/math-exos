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
real thetaC=100, phiC=45;

currentprojection=orthographic((4,1,2));

// draw(octant1,material(palegreen+opacity(0.25),shininess=0.5));
draw(unitsphere,material(palegreen+opacity(0.9),shininess=0.5));

real r=1.2;
pen p=black;
draw(Label("$x$",1),O--r*X,p,Arrow3);
draw(Label("$y$",1),O--r*Y,p,Arrow3);
draw(Label("$z$",1),O--r*Z,p,Arrow3);
label("$\rm O$",(0,0,0),-1.5Y-X);

triple Q=radius*dir(theta,phi);

triple A=radius*dir(thetaA,phiA);
dot(A,Rouge);
label("$A$",A+(0,0,0.1));

triple B=radius*dir(thetaB,phiB);
dot(B,Rouge);
label("$B$",B+(0.2,0,0.2));

triple C=radius*dir(thetaC,phiC);
dot(C,Rouge);
label("$C$",C+(0,0.1,0));

real alpha = aSin(length(cross(B,C)));
real BL = Sin(30);
real CL = Sin(alpha - BL);
triple L = unit(CL*B + BL*C);
dot(L,Rouge);
label("$L$",L+(0,0,0.1));

real beta = aSin(length(cross(C,A)));
real CM = Sin(15);
real AM = Sin(beta - CM);
triple M = unit(AM*C + CM*A);
dot(M,Rouge);
label("$M$",M+(0,0.1,0));

real gamma = aSin(length(cross(A,B)));
real AN = Sin(20);
real BN = Sin(gamma - AN);
triple N = unit(AN*B + BN*A);
dot(N,Rouge);
label("$N$",N+(0,0,0.1));

// draw(arc(O,radius,thetaA,phiA,thetaB,phiB),vert);
draw(circle(O,radius,cross(A,B)),vert);
// draw(arc(O,radius,thetaB,phiB,thetaC,phiC),vert);
draw(circle(O,radius,cross(B,C)),vert);
//draw(arc(O,radius,thetaA,phiA,thetaC,phiC),vert);
draw(circle(O,radius,cross(C,A)),vert);

// draw(Q--(Q.x,Q.y,0),dashed+blue);
// draw(O--radius*dir(90,phi),dashed+blue);
// draw((0,0,Q.z)--Q,dashed+blue);

// draw("$\theta$",arc(O,0.15*Z,0.15Q),align=2*dir(theta/2,phi),Arrow3);
// draw("$\varphi$",arc(O,0.15*X,0.15*dir(90,phi)),align=5*dir(90,phi/3)+Z,Arrow3);

// Spherical octant
// real r=sqrt(Q.x^2+Q.y^2);
// draw(arc((0,0,Q.z),(r,0,Q.z),(0,r,Q.z)),dashed+red);
// draw(arc(O,radius*Z,radius*dir(90,phi)),dashed+heavygreen);
// draw(arc(O,radius*Z,radius*X),thickp);
// draw(arc(O,radius*Z,radius*Y),thickp);
// draw(arc(O,radius*X,radius*Y),thickp);

// draw("$\bm{r}$",O--Q,align=2*dir(90,phi),Arrow3,DotMargin3);
