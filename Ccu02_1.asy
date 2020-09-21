size(4cm);
import graph ;
guide g;
real u = -2;
real v = -2;
real f(real m)
  {
    return (m -u)**2+v;
  }
real xmin = -4; real xmax = 4;
real ymin = -4; real ymax = 4;
draw(graph(f,-4,0.5),red +1);
dot((1,0));
label("$1$",(1,0),N);
axes((xmin,ymin),(xmax,ymax),EndArrow);
draw((u,0)--(u,v)--(0,v),dashed);
dot((u,0)); dot((0,v));
label("$-\frac{b}{2a}$",(u,0),N);
label("$-\frac{\Delta}{4a}$",(0,v),E);