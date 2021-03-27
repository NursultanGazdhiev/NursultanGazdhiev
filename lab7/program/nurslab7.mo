model nurslab7
parameter Real N= 1030;// максимальное количество людей, которых может заинтересовать товар
parameter Real x0 = 8  ; // количество людей, знающих о товаре в начальный момент времени
Real x (start=x0);



function k 
 input  Real t;
 output Real res;
 algorithm
//res :=0.83 ; // для 1 случая
//res := 0.000083 ; // для 2 случая
 res :=0.83*sin(t) ; // для 3 случая
 end k;
 
function m 
 input  Real t;
 output Real res;
 algorithm
//res :=0.000083 ; // для 1 случая
//res :=0.83 ; // для 2 случая
res :=0.83*sin(t) ; // для 3 случая
 end m;
equation
der(x) = (k(time) + m(time)* x) * (N-x);


end nurslab7;
