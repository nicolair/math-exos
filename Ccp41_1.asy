size(3cm);
pair u = (1,0);
pair z = u + expi(2.2);
pair w = u + expi(0.9);
path cercle = shift(u)*unitcircle;
draw(cercle,red);
draw(z--u,green);
draw(w--u,green);
draw((-1,0)--(4,0));
dot(u);
dot(z);
dot(w);
label("$u$",u,S);
label("$z$",z,N);
label("$w$",w,N);