import graph;

settings.outformat = "pdf";
size(4cm);

pen GrosCrayon1 = red +1;
pen GrosCrayon2 = deepgreen +2;

draw(circle((0,0),2));
draw((-4,0)--(2,0),GrosCrayon2);
draw((-1,sqrt(3))--(2,-2*sqrt(3)),GrosCrayon2);
draw((-1,-sqrt(3))--(2,2*sqrt(3)),GrosCrayon2);

dot((2,0),deepgreen + 4);
dot((-1,sqrt(3)),deepgreen + 4);
dot((-1,-sqrt(3)),deepgreen + 4);