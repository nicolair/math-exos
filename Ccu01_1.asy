size(4cm);
import graph ;
guide g;
real f(real m)
  {
    return (1+2*m)/(1-m);
  }
real xmin = -4; real xmax = 6;
real ymin = -8; real ymax = 4;
draw(graph(f,xmin,0.5),red +1);
draw(graph(f,1.5,xmax),red +1);
axes((xmin,ymin),(xmax,ymax),EndArrow);
draw((xmin,-2)--(xmax,-2),dashed);
draw((1,ymin)--(1,ymax),dashed);