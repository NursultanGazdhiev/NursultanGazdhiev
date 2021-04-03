model nurslan8
parameter Real p_cr= 35;//критическая стоимость продукта
parameter Real tau1 = 18 ; //длительность производственного цикла фирмы 1
parameter Real p1 = 7.7; //себестоимость продукта у фирмы 1
parameter Real tau2 = 13; //длительность производственного цикла фирмы 2
parameter Real p2 = 8.9; //себестоимость продукта у фирмы 2
parameter Real N = 30; //число потребителей производимого продукта
parameter Real q = 1; //максимальная потребность одного человека в продукте в единицу времен

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

parameter Real M0_1=5.4;
parameter Real M0_2=4.1;
Real M1(start=M0_1);
Real M2(start=M0_2);

equation
//для первого случая 
//der (M1)=M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
//der (M2) = (c2/c1)*M2 - (b/c1)*M1*M2 - (a2/c1)*M2*M2;

//для второго случая
der (M1)=M1 - (b/c1)*M1*M2 - (a1/c1)*M1*M1;
der (M2) = (c2/c1)*M2 - (b/c1+0.00053)*M1*M2 - (a2/c1)*M2*M2;


end nurslan8;
