---
# Front matter
lang: ru-RU
title: "Отчёт по лабораторной работе 5"
subtitle: "дисциплина: Математическое моделирование"
author: "Гаджиев Нурсултан, НПИбд-01-18"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Ознакомление с простейшей моделью взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры и построение графиков на языке Modelica.

# Задание

**Вариант 35**

Для модели «хищник-жертва»:
$$ \begin{cases} \frac{dx}{dt}=-0.29x(t)+0.031x(t)y(t) \\ \frac{dx}{dt}=0.33x(t)-0.024x(t)y(t) \end{cases} $$
Постройте график зависимости численности хищников от численности жертв,
а также графики изменения численности хищников и численности жертв при
следующих начальных условиях:
$x_0 = 7, y_0 = 14$. Найдите стационарное состояние системы.


# Выполнение лабораторной работы

## Постановка задачи

Простейшая модель взаимодействия двух видов типа «хищник — жертва» -
модель Лотки-Вольтерры. Данная двувидовая модель основывается на
следующих предположениях:

1. Численность популяции жертв x и хищников y зависят только от времени (модель не учитывает пространственное распределение популяции на занимаемой территории).

2. В отсутствии взаимодействия численность видов изменяется по модели Мальтуса, при этом число жертв увеличивается, а число хищников падает.

3. Естественная смертность жертвы и естественная рождаемость хищника считаются несущественными.

4. Эффект насыщения численности обеих популяций не учитывается.

5. Скорость роста численности жертв уменьшается пропорционально численности хищников.

$$ \begin{cases} \frac{dx}{dt}=-ax(t)+bx(t)y(t) \\ \frac{dy}{dt}=cx(t)-dx(t)y(t) \end{cases} $$ (1)

В этой модели $x$ – число жертв, $y$ - число хищников. Коэффициент a
описывает скорость естественного прироста числа жертв в отсутствие хищников, $с$ - естественное вымирание хищников, лишенных пищи в виде жертв. Вероятность взаимодействия жертвы и хищника считается пропорциональной как количеству жертв, так и числу самих хищников (xy). Каждый акт взаимодействия уменьшает популяцию жертв, но способствует увеличению популяции хищников (члены -bxy и dxy в правой части уравнения).


![Эволюция популяции жертв и хищников в модели Лотки-Вольтерры](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab5/image/%D0%A1%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%82%2013-03-2021%20125910.png?raw=true){ #fig:001 width=70% }

Математический анализ этой (жесткой) модели показывает, что имеется
стационарное состояние (A на рис. -@fig:001), всякое же другое начальное состояние (B) приводит к периодическому колебанию численности как жертв, так и хищников, так что по прошествии некоторого времени система возвращается в состояние B.

Стационарное состояние системы (1) (положение равновесия, не зависящее
от времени решение) будет в точке: $x_0=\frac{b}{d}, y_0=\frac{a}{c}$.

Если начальные значения задать в стационарном состоянии $x(0) = x_0 , y(0) =  y_0$ , то в любой момент времени численность популяций изменяться не будет. При малом отклонении от положения равновесия численности как хищника, так и жертвы с течением времени не возвращаются к равновесным значениям, а совершают периодические колебания вокруг стационарной точки. Амплитуда колебаний и их период определяется начальными значениями численностей x(0) , y(0). Колебания совершаются в противофазе.



## Выполнение работы

Для модели «хищник-жертва»:  
$$ \begin{cases} \frac{dx}{dt}=-ax(t)+bx(t)y(t) \\ \frac{dy}{dt}=cx(t)-dx(t)y(t) \end{cases} $$
$$ \begin{cases} \frac{dx}{dt}=-0.29x(t)+0.031x(t)y(t) \\ \frac{dx}{dt}=0.33x(t)-0.024x(t)y(t) \end{cases} $$

**Начальные условии:**

$a$ - коэффициент естественной смертности хищников

$b$ - коэффициент естественного прироста жертв

$c$ - коэффициент увеличения числа хищников  

$d$ - коэффициент смертности жертв

У нас дано:

a = 0.29 (коэффициент естественной смертности хищников)  

b = 0.33 (коэффициент увеличения числа хищников)

c = 0.031 (коэффициент естественного прироста жертв)  

d = 0.024 (коэффициент смертности жертв)  

Начальное число хищников -- $x_0 = 7$,  
начальное число жертв -- $y_0 = 14$.


**Код программы**

```
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

```

![Код программы](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab5/image/%D0%BA%D0%BE%D0%B4.jpg?raw=true){ #fig:002 width=70% }  


1. Постройл график зависимости численности хищников от численности жертв (рис. -@fig:003)

![График зависимости численности хищников от численности жертв](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab5/image/1%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:003 width=70% }  

2. Построил графики изменения численности популяции хищников и численности жертв с течением времени (рис. -@fig:004)

![График изменения численности хищников и численности жертв с течением времени](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab5/image/2%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:004 width=70% }

3. Для того, чтобы найти стационарное состояние системы, необходимо приравнять производные каждой из функций x и y к нулю и выразить значения y и x соответственно.

Получим следующие значения: $x_0=\frac{b}{d}, y_0=\frac{a}{c}$, $x_0=\frac{0.33}{0.024}=13.75, y_0=\frac{0.29}{0.031}=9.35$ При стационарном состоянии значений числа и хищников не меняется во времени. (рис. -@fig:005)


![Стационарное состояние системы](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab5/image/3%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:005 width=70% }



# Выводы

Ознакомился с простейшей моделью взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры и построил графики на языке Modelica.
