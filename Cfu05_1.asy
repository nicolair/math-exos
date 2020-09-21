settings.outformat = "pdf";
//import graph;
size(3cm);

pen Vert = deepgreen+3;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

path C = E..N..W..S..cycle;

draw(C);
draw((0.5,1.1)--(0.5,-1.1));
draw(arc((0,0),1,60,300),Vert);
