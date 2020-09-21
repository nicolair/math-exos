settings.outformat = "pdf";
import graph;
size(5cm);


draw((0,0)--(3.5,0),Arrow);
draw((0.,0)--(0, 2.5), Arrow);


//draw((0,1)--(1,0),dashed);


pair eps = (0.01,0.01);
draw((1.1,0)--(3.,0),deepgreen+2);
for(int i=1; i < 8; ++i) {
  pair P = (1/(i+1),1-1/(i+1));
  pair Q = (1/i,1);
  draw(Q--(2/i,2), dashed);
  draw(P+eps--Q, deepgreen+1);
  dot(P,deepgreen,NoFill);dot(Q,deepgreen);
}

dot((0,1),deepgreen+3);
dot((1,0),deepgreen+1,NoFill);