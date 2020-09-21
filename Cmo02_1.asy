settings.outformat = "pdf";
import graph;
size(7cm);

pen Vert = deepgreen+8;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

axes((-5,-5),(5,5), xlabel="$a$", ylabel= "$b$", Arrow);
 
draw((-4.5,-4.5)--(5,5),vert);

draw((-4,2)--(2,-4),vert);
draw((4,-2)--(-2,4),vert);

label("$a=b$", (-5,-5));
label("$a + b = -2$", (2,-4.5));
label("$a + b = 2$", (4.1,-2.7));

dot((1,1),Vert);
dot((-1,-1),Vert);

pair R3 = (-5.5,3.6);
label("$rg = 3 $",R3);
draw((-4.2,3.5)--(-2.2,4),Arrow);
draw((-4.2,3.5)--(-4,2.2),Arrow);

pair R2 = (-5,-2);
label("$rg = 2 $",R2);
draw((-5,-2.3)--(-4.2,-4.0),Arrow);


pair R1 = (-2,2);
label("$rg = 1 $",R1);
draw((-1.9,1.7)--(-1.1,-0.6),Arrow);
draw((-1.9,1.7)--(0.6,1.1),Arrow);
