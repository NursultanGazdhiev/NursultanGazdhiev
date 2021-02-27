model nurslab
  parameter Real a=0.25;
  parameter Real b=0.74;
  parameter Real c=0.64;
  parameter Real h=0.55;
  parameter Real x0=31050;
  parameter Real y0=20002;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x)=-a*x-b*y+sin(time+5);
  der(y)=-c*x-h*y+cos(time+6);

end nurslab;
