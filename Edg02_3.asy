import graph3;

size(4cm);
//currentprojection=perspective(5,4,7); //defaut (5,4,2)

real phi(real t) {
  real v = 0;
  if(t<1) {
    v = exp(1/(t-1));
  }
  return v;
}

triple f(pair z){
  return (z.x*cos(z.y),z.x*sin(z.y),phi(z.x));
}

surface s = surface(f,(0,0),(1.2,2pi));

draw(s,lightgreen);


axes3("$x$","$y$","$z$",(-1.5,-1.5,0),(1.5,1.5,1),Arrow3);