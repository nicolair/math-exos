settings.outformat = "pdf";
import graph;
size(7cm);

real p = 2.;
real theta = 1.5;

draw ((-2*p,0)--(2*p,0));
draw((p,-2*p)--(p,2*p), red+1);
label('$\mathcal{D}$', (p,2*p),E);

pair F = (0,0);
dot(F, red+4);
label('$F$',F,S);

real f(real theta)
{
return p/(1+ cos(theta));
}
guide H = polargraph(f,-2.2,2.2);
draw(H, deepgreen+1);

pair M = f(theta)*(cos(theta),sin(theta));
dot(M, deepgreen+3);
label("$M(\theta)$",M,NE);

pair H = (p,f(theta)*sin(theta));
dot(H, deepgreen+3);
label("$H(\theta)$",H,E);

draw(M--H,dotted);
draw(F--H);

real lambda(real theta)
{
return (2*p*cos(theta/2))/(1+cos(theta))^2;
}

real phi(real theta)
{
return (pi + theta)/2;
}

pair v = lambda(theta)*(cos(phi(theta)), sin(phi(theta)));

draw((M+0.5v)--(M-v));
real t = -2;
label("$\mathcal{P}$", f(t)*(cos(t),sin(t)),N);
