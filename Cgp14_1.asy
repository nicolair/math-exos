import graph ;
size(6cm);

real theta = -0.9;
real m = 4.3;

pair O = (0,0);
pair A = (1,0);
real lambda = 3.99 ;

real f(real phi){
  return 2*cos(phi) + sqrt(2*cos(2*phi)) ;
}

real phi = theta + pi/4;
pair M = (f(phi)*cos(phi),f(phi)*sin(phi));
real r = sqrt((M.x - 1)^2 +M.y^2);

path cercle1 = circle((2,0),sqrt(2));
path cercle2 = circle(M,r);

axes((-2,-m),(5,m),Arrow);

draw((-0.5*lambda*cos(theta),-0.5*lambda*sin(theta))--(lambda*cos(theta),lambda*sin(theta)),darkgreen + 1);
draw((0.5*lambda*sin(theta),-0.5*lambda*cos(theta))--(-lambda*sin(theta),lambda*cos(theta)),darkgreen + 1);

draw(cercle1, red + 1);
draw(cercle2,darkgreen+1);
dot(A);
label('$A$',A,SE);
dot(M);