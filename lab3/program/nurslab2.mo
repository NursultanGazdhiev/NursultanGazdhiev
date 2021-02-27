<<<<<<< HEAD
model nurslab2
  parameter Real a=0.32;
  parameter Real b=0.89;
  parameter Real c=0.51;
  parameter Real h=0.62;
  parameter Real x0=31050;
  parameter Real y0=20002;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x)=-a*x-b*y+2*sin(10*time);
  der(y)=-c*x*y-h*y+2*cos(10*time);

end nurslab2;
=======
model nurslab2
  parameter Real a=0.32;
  parameter Real b=0.89;
  parameter Real c=0.51;
  parameter Real h=0.62;
  parameter Real x0=31050;
  parameter Real y0=20002;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x)=-a*x-b*y+2*sin(10*time);
  der(y)=-c*x*y-h*y+2*cos(10*time);

end nurslab2;
>>>>>>> 2d179c5af3410d35891c7e820b21a735b119f7f2
