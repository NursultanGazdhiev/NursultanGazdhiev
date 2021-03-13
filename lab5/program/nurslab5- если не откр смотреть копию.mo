model nurslab5
parameter Real a= 0.29; // коэффициент естественной смертности хищников
parameter Real b= 0.33; // коэффициент естественного прироста жертв
parameter Real c= 0.031; // коэффициент увеличения числа хищников 
parameter Real d= 0.024; // коэффициент смертности жертв


//parameter Real x0=7;//начальные условия
//parameter Real y0=14; //начальные условия

parameter Real x0=0.33/0.024;//(b/d)
parameter Real y0=0.29/0.031;//(a/c)
Real x(start=x0);
Real y(start=y0);

equation

der (x) = -a*x + c*x*y;
der (y) = b*y - d*x*y;

end nurslab5;
