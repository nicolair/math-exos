import graph3;

size(4cm);
currentprojection=perspective(5,4,7);
real f(pair z) {
  return (z.x^3-z.y^3)/(z.x^2+z.y^2);
}
bool condi(pair z){ return abs(z)>0.1;}

surface s = surface(f,(-2,-2),(2,2),condi);

draw(s,lightgreen,meshpen=black+thick());


axes3("$x$","$y$","$z$",(-2.2,-2.2,-2.2),(2.2,2.2,2.2),Arrow3);