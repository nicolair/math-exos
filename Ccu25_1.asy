import graph;

settings.outformat = "pdf";
size(4cm);

pen GrosCrayon1 = red +1;
pen GrosCrayon2 = deepgreen +2;

draw((0,0)--(5,0),Arrow);
draw((0,0)--(0,5),Arrow);

label("1",(1,1),N);

label("2",(1,2),N, blue);
label("2",(2,1),N, blue);
label("2",(2,2),N, blue);

label("3",(1,3),N, green);
label("3",(2,3),N, green);
label("3",(3,3),N, green);
label("3",(3,1),N, green);
label("3",(3,2),N, green);

label("4",(1,4),N, red);
label("4",(2,4),N, red);
label("4",(3,4),N, red);
label("4",(4,4),N, red);
label("4",(4,1),N, red);
label("4",(4,2),N, red);
label("4",(4,3),N, red);