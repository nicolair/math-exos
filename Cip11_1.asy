import graph;

settings.outformat = "pdf";
size(7cm);

pen GrosCrayon1 = red +1;
pen GrosCrayon2 = deepgreen +1;

real f(real x){
  return x*x*x;
}

real x = 0.8;
real y = f(x);
transform sym = reflect((0,0),(1,1));

guide G1 = graph(f, 0, x);
guide G2 = sym*G1;

draw(G1,GrosCrayon1);
draw((0,0)--(x,0),GrosCrayon1);
draw((x,0)--(x,y),GrosCrayon1);
guide aire1 = G1--(x,0)--(0,0)--cycle;
aire1 = shift(0.4,0.2)*aire1;
filldraw(aire1, GrosCrayon1);

draw(G2,GrosCrayon2);
draw((y,0)--(y,x),GrosCrayon2);
guide aire2 = G2--(y,x)--(y,0)--(0,0)--cycle;
aire2 = shift(-0.3,0.7)*aire2;
filldraw(aire2, GrosCrayon2);

draw((0,0)--(1,1));
draw((x,y)--(0,y));
axes(Arrow);
label("$x$",(x,0),S);
label("$f(x)$",(0,y),W);
label("$f(x)$",(y,0),S);