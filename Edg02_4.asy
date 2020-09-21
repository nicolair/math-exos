import graph3;

size(4cm);
currentprojection=perspective(2,6,4); //defaut (5,4,2)


real f(pair z){
  real v=0;
  if(abs(z.x)>z.y){
    v = z.x^2;
  }
  return v;
}

surface s = surface(f,(-1,-1),(1,1));

draw(s,lightgreen);


axes3("$x$","$y$","$z$",(-1.5,-1.5,0),(1.5,1.5,1),Arrow3);