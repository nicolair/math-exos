import graph;

size(4cm);

real r = 0.5;
real R = 2;
real t = 5;

draw((r,0)--(R,0),red+1,MidArrow(t));
draw((-R,0)--(-r,0),red+1,MidArrow(t));
draw((R,0){up}..{down}(-R,0),red+1,MidArrow(t));
draw((-r,0){up}..{down}(r,0),red+1,MidArrow(t));

axes((-2.8,0),(2.8,2.8),Arrow);
