---
# Front matter
lang: ru-RU
title: "Отчёт по лабораторной работе 4"
subtitle: "дисциплина: Математическое моделирование"
author: "Гаджиев Нурсултан , НПИбд-01-18"

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

Рассмотреть модель линейного гармонического осциллятора и решить три случая задачи о моделе гармонических колебаний

# Задание

**Вариант 35**
Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы $x''$+7.4x=0

2. Колебания гармонического осциллятора c затуханием и без действий внешней силы $x''$+10.1$x'$+0.1x=0

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы $x''$+3$x'$+3.3x=0.2*$\sin$(3*t)     

На интервале $t \in [0;33]$ (шаг 0.05) с начальными условиями $x_{0}$=0, $y_{0}$=-1.4


# Выполнение лабораторной работы

## Постановка задачи
Движение грузика на пружинке, маятника, заряда в электрическом контуре, а
также эволюция во времени многих систем в физике, химии, биологии и других
науках при определенных предположениях можно описать одним и тем же
дифференциальным уравнением, которое в теории колебаний выступает в качестве
основной модели. Эта модель называется линейным гармоническим осциллятором.

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:

$$ x'' + 2\gamma x' + \omega_{0}^2 x = 0 $$ (1)


где x – переменная, описывающая состояние системы (смещение грузика, заряд
конденсатора и т.д.), $\gamma$ – параметр, характеризующий потери энергии (трение в
механической системе, сопротивление в контуре), $\omega_{0}$ – собственная частота
колебаний, t – время. Обозначения x'' =  $\frac{d^2x}{dt^2}$ , x' =   $\frac{dx}{dt}$         


Уравнение (1) есть линейное однородное дифференциальное уравнение
второго порядка и оно является примером линейной динамической системы.


При отсутствии потерь в системе ($\gamma$ = 0)вместо уравнения (1.1) получаем
уравнение консервативного осциллятора энергия колебания которого сохраняется
во времени.

$$ x'' + \omega_{0}^2x = 0 $$(2)


Для однозначной разрешимости уравнения второго порядка (2) необходимо
задать два начальных условия вида



\begin{equation*}
  \begin{cases}
    x(t_{0}) = x_{0}
    \\
   x'(t_{0}) = y_{0}
  \end{cases}
\end{equation*} (3)


Уравнение второго порядка (2) можно представить в виде системы двух
уравнений первого порядка:


\begin{equation*}
  \begin{cases}
    x' = y
    \\
   y' = - \omega_{0}^2x
  \end{cases}
\end{equation*} (4)

Начальные условия (3) для системы (4) примут вид:

\begin{equation*}
  \begin{cases}
    x(t_{0}) = x_{0}
    \\
    y(t_{0}) = y_{0}
  \end{cases}
\end{equation*}

Независимые переменные x, y определяют пространство, в котором
«движется» решение. Это фазовое пространство системы, поскольку оно двумерно
будем называть его фазовой плоскостью.

Значение фазовых координат x, y в любой момент времени полностью
определяет состояние системы. Решению уравнения движения как функции
времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой
траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости,
возникает общая картина поведения системы. Такую картину, образованную набором фазовых траекторий, называют фазовым портретом.


## Выполнение работы

Уравнение колебания гармонического осциллятора будет иметь следующий вид:

$$ x'' + g * x' + w * x = f(t) $$

где

w - это коэффициент частоты

g - это коэффициент затухания

функция $f(t)$ - это действие внешней силы

Уравнение второго порядка можно представить в виде системы двух
уравнений первого порядка:

$$ x' = y $$

$$ y' = - w*w*x - g*y - f(t) $$

На интервале $t \in [0;33]$ (шаг 0.05)
с начальными условиями $x_{0} = 0$, $y_{0} = -1.4$


![Интервал ](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_7.png?raw=true){ #fig:001 width=70% }



### Колебания гармонического осциллятора без затуханий и без действий внешней силы

**Начальные условии:**

w = $\sqrt{7.4}$

g = 0.0;

правая часть уравнение f(t)  = 0


**Код программы**

```
model Oscillator
//Параметры осциллятора
//x'' + g* x' + w^2* x = f(t)
/*Для первого случая */
parameter Real w = sqrt(7.4); //w - частота
parameter Real g = 0.0; //g - затухание

/*Для второго случая
parameter Real w = sqrt(0.1); //w - частота
parameter Real g = 10.1; //g - затухание */

/*Для третьего случая
parameter Real w = sqrt(3.3); //w - частота
parameter Real g = 3.0; //g - затухание */

parameter Real x0 = 0;
parameter Real y0 = -1.4;

Real x(start=x0);
Real y(start=y0);
//Правая часть уравнения f(t)
function f
  input Real t;
  output Real result;
algorithm
  result := 0; // 1 и 2 случаев
//  result := 0.2*sin(3.5*t); // 3 случай
end f;

equation
///Вектор-функция f(t, x)
///для решения системы дифференциальных уравнений
///x' = y(t, x)
///где x - искомый вектор
der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end Oscillator;

```

![Код программы ](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_2.png?raw=true){ #fig:002 width=70% }

![Фазовый портрет гармонического осциллятора без затухание и без действия внешней силы](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_1.png?raw=true){ #fig:003 width=70% }


### Колебания гармонического осциллятора c затуханием и без действий внешней силы


**Начальные условии:**

w = $\sqrt{0.1}$

g = 10.1;

правая часть уравнение f(t)  = 0


**Код программы**

```
model Oscillator
//Параметры осциллятора
//x'' + g* x' + w^2* x = f(t)
/*Для первого случая */
parameter Real w = sqrt(7.4); //w - частота
parameter Real g = 0.0; //g - затухание

/*Для второго случая
parameter Real w = sqrt(0.1); //w - частота
parameter Real g = 10.1; //g - затухание */

/*Для третьего случая
parameter Real w = sqrt(3.3); //w - частота
parameter Real g = 3.0; //g - затухание */

parameter Real x0 = 0;
parameter Real y0 = -1.4;

Real x(start=x0);
Real y(start=y0);
//Правая часть уравнения f(t)
function f
  input Real t;
  output Real result;
algorithm
  result := 0; // 1 и 2 случаев
//  result := 0.2*sin(3.5*t); // 3 случай
end f;

equation
///Вектор-функция f(t, x)
///для решения системы дифференциальных уравнений
///x' = y(t, x)
///где x - искомый вектор
der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end Oscillator;

```


![Код программы ](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_4.png?raw=true){ #fig:004 width=70% }

![Фазовый портрет гармонического осциллятора c затуханием и без действий внешней силы](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_3.png?raw=true){ #fig:005 width=70% }


### Колебания гармонического осциллятора c затуханием и под действием внешней силы

**Начальные условии:**

w = $\sqrt{3.3}$

g = 3.0;

правая часть уравнение f(t) = 0.2*$\sin$(3.5*t)


**Код программы**

```
model Oscillator
//Параметры осциллятора
//x'' + g* x' + w^2* x = f(t)
/*Для первого случая */
parameter Real w = sqrt(7.4); //w - частота
parameter Real g = 0.0; //g - затухание

/*Для второго случая
parameter Real w = sqrt(0.1); //w - частота
parameter Real g = 10.1; //g - затухание */

/*Для третьего случая
parameter Real w = sqrt(3.3); //w - частота
parameter Real g = 3.0; //g - затухание */

parameter Real x0 = 0;
parameter Real y0 = -1.4;

Real x(start=x0);
Real y(start=y0);
//Правая часть уравнения f(t)
function f
  input Real t;
  output Real result;
algorithm
  result := 0; // 1 и 2 случаев
//  result := 0.2*sin(3.5*t); // 3 случай
end f;

equation
///Вектор-функция f(t, x)
///для решения системы дифференциальных уравнений
///x' = y(t, x)
///где x - искомый вектор
der(x) = y;
der(y) = -w*w*x - g*y - f(time);

end Oscillator;

```


![Код программы ](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_6.png?raw=true){ #fig:006 width=70% }

![Фазовый портрет гармонического осциллятора c затуханием и под действий внешней силы](https://github.com/zikarimov/2020-2021_mathmod/blob/master/lab04/image/Screenshot_5.png?raw=true){ #fig:007 width=70% }


# Выводы

Рассмотрел модель линейного гармонического осциллятора и решил три случая задачи о моделе гармонических колебаний.
