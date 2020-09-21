settings.outformat = "pdf";
import graph;
size(8cm);

pen vert = deepgreen+2;

axes((-0.1,-0.1),(1.1,1.1), xlabel="$f$", ylabel= "$v$", Arrow);
 
draw((1,0)--(1,1)--(0,1));
draw((1,0)--(8/9,1),vert);

draw((8/9,0)--(8/9,1));
label("$\frac{8}{9}$",(8/9,0),S);

draw((0.5,0.5)--(0.95,0.95),Arrow);
label("zone satisfaisante",(0.3,0.45));
