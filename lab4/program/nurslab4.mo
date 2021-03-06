model nurslab4
//Параметры осциллятора
/*Для второго случая */
//x'' + g* x' + w^2* x = f(t)
  parameter Real w = sqrt(0.1); //w - частота
  parameter Real g = 10.1; //g - затухание

parameter Real x0 = 0;
parameter Real y0 = -1.4;
  
Real x(start = x0);
Real y(start = y0);
//Правая часть уравнения f(t)
function f
  input Real t;
  output Real result;
algorithm
 result := 0;// 1  и 2 случай
// result := 0.2*sin(3.5*t); // 3 случая
  end f;
  
equation
///Вектор-функция f(t, x)
///для решения системы дифференциальных уравнений
///x' = y(t, x)
///где x - искомый вектор
  der(x) = y;
  der(y) = -w*w*x - g*y - f(time);
  
end nurslab4;
