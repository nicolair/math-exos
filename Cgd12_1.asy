import graph;

size(4cm);


real f(real t){ return 2*t*t*(1-t);}

guide cb = graph(f,0,1.2);
axes(Arrow);
label("$a$",1,NE);
draw(cb, darkgreen+1);