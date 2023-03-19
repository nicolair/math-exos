settings.outformat = "pdf";
import graph;
size(7cm);

real c = 1.;
pair F = (0,0);
pair FF = (-2*c,0);

dot(F, red + 3);
label("$F$",F,SW);
dot(FF, red + 3);
label("$F'$",FF,S);

draw(-1.5*FF--1.5*FF,dotted);

path unitcircle = E..N..W..S..cycle;

real a = 1.15;
draw(scale(2*a)*unitcircle);

real theta = 1.9;
pair K = 2*a*(cos(theta), sin(theta));
dot(K,black+3);
label("$K$",K,NE);

path dKF = 1.4*K--(-1.2*K);
draw(dKF, red+1);
path dKFF = FF--K;
draw(dKFF, red+1);

pair Mil = (FF + K)/2;
pair v = K - FF;
v = (v.y,-v.x);
path med = (Mil-0.4*v)--(Mil + 1.4*v);
draw(med, red+dotted);

pair [] inter = intersectionpoints(dKF,med);

pair M = inter[0];
dot(M,deepgreen+3);
label("$M$",M,E);
