import graph3;

size(4cm);
real phi(real r) {
  return r^2*sin(1/r^2);
}
triple f(pair z) {
  return (z.x*cos(z.y),z.x*sin(z.y), phi(z.x));
}

surface s = surface(f,(0.01,0),(0.6,2pi),8,8,Spline);

draw(s,lightgreen);


axes3("$x$","$y$","$z$",(-1,-1,-0.5),(1,1,0.5),Arrow3);