---
# Front matter
lang: ru-RU
title: "Отчёт по лабораторной работе 6"
subtitle: "дисциплина: Математическое моделирование"
author: "Гаджиев Нурсултан Тофик оглы, НПИбд-01-18"

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

Ознакомление с простейшей моделью Эпидемии и ее построение с помощью языка программирования Modelica.

# Задание

**Вариант 35**

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих
на острове $(N=12 300)$ в момент начала эпидемии $(t=0)$ число заболевших людей $(являющихся распространителями инфекции)$ I$(0)$=140, А число здоровых людей с иммунитетом к болезни R$(0)$=54. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени S$(0)$=N-I$(0)$- R$(0)$.  
Постройте графики изменения числа особей в каждой из трех групп.  
Рассмотрите, как будет протекать эпидемия в случае:

1. если $I(0) \leq I^*$

2. если $I(0) > I^*$



# Выполнение лабораторной работы

## Постановка задачи

Предположим, что некая популяция, состоящая из N особей, (считаем, что популяция изолирована) подразделяется на три группы. Первая группа - это восприимчивые к болезни, но пока здоровые особи, обозначим их через S(t). Вторая группа – это число инфицированных особей, которые также при этом являются распространителями инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это здоровые особи с иммунитетом к болезни.

До того, как число заболевших не превышает критического значения I* считаем, что все больные изолированы и не заражают здоровых. Когда I(t)>I*, тогда инфицирование способны заражать восприимчивых к болезни особей.

Таким образом, скорость изменения числа S(t) меняется по следующему
закону:

$$
\frac{dS}{dt}=
 \begin{cases}
	-\alpha S &\text{,если $I(t) > I^*$}
	\\   
	0 &\text{,если $I(t) \leq I^*$}
 \end{cases}
$$

Поскольку каждая восприимчивая к болезни особь, которая, в конце концов, заболевает, сама становится инфекционной, то скорость изменения числа инфекционных особей представляет разность за единицу времени между заразившимися и теми, кто уже болеет и лечится. Т.е.:

$$
\frac{dI}{dt}=
 \begin{cases}
	\alpha S -\beta I &\text{,если $I(t) > I^*$}
	\\   
	-\beta I &\text{,если $I(t) \leq I^*$}
 \end{cases}
$$

А скорость изменения выздоравливающих особей (при этом приобретающие иммунитет к болезни):

$$\frac{dR}{dt} = \beta I$$

Постоянные пропорциональности $\alpha, \beta$ - это коэффициенты заболеваемости и выздоровления соответственно. Для того, чтобы решения соответствующих уравнений определялось однозначно, необходимо задать начальные условия. Считаем, что на начало эпидемии в момент времени $t=0$ нет особей с иммунитетом к болезни $R(0)=0$, а число инфицированных и восприимчивых к болезни особей $I(0)$ и $S(0)$ соответственно. Для анализа картины протекания эпидемии необходимо рассмотреть два случая:  $I(0) \leq I^*$ и  $I(0)>I^*$


## Выполнение работы

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове $(N=12300)$ в момент начала эпидемии $(t=0)$ число заболевших людей (являющихся распространителями инфекции) $I(0)=140$, А число здоровых людей с иммунитетом к болезни $R(0)=54$. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени $S(0)=N-I(0)-R(0)$.
Постройте графики изменения числа особей в каждой из трех групп.
Рассмотрите, как будет протекать эпидемия в случае:
1.	если $I(0)\leq I^*$
2.	если $I(0)>I^*$

**Начальные условии:**

$a$ - коэффициент заболеваемости

$b$ - коэффициент выздоровления

$N$ - общая численность популяции  

$I(0)$ - количество инфицированных особей в начальный момент времени

$R(0)$ - количество здоровых особей с иммунитетом в начальный момент времени

$S(0)$ - количество восприимчивых к болезни особей в начальный момент времени

У нас дано:

a = 0.01 (коэффициент заболеваемости)  

b = 0.02 (коэффициент выздоровления)

N = 12300 (общая численность популяции)  

$I(0)$ = 140 (количество инфицированных особей в начальный момент времени)

$R(0)$ = 54 (количество здоровых особей с иммунитетом в начальный момент времени)


**Код программы**

```
model Epidemic
parameter Real a = 0.01; // коэффициент заболеваемости
parameter Real b = 0.02; //коэффициент выздоровления
parameter Real N = 12300; // общая численность популяции
parameter Real I0 = 140; // количество инфицированных особей в начальный момент времени
parameter Real R0 = 54; // количество здоровых особей с иммунитетом в начальный момент времени
parameter Real S0 = N - I0 - R0; // количество восприимчивых к болезни особей в начальный момент времени

Real S(start=S0); //количество восприимчивых к болезни особей
Real I(start=I0); //количество инфицированных особей
Real R(start=R0); //количество здоровых особей с иммунитетом

equation
// случай, когда I(0)<=I*

der(S) = 0;
der(I) = - b*I;
der(R) = b*I;

//случай, когда I(0) > I*
/*
der(S) = -a*S;
der(I) = a*S - b*I;
der(R) = b*I; */

end Epidemic;

```
Ниже приведен скриншот кода программы, реализованный на языке программирования Modelica (рис. -@fig:001)

![Код программы](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab6/image/4%20%D1%81%D0%BA%D1%80%D0%B8%D0%BD.jpg?raw=true){ #fig:001 width=70% }  


1. Построил график изменения числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных не превышает критического значения (рис. -@fig:002)

![График изменения числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных не превышает критического значения](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab6/image/1%20%D1%81%D0%BA%D1%80%D0%B8%D0%BD.jpg?raw=true){ #fig:002 width=70% }  

2. Построил график изменения числа особей, восприимчивых к болезни S(t), если число инфицированных не превышает критического значения (рис. -@fig:003)

![График изменения числа особей, восприимчивых к болезни S(t), если число инфицированных не превышает критического значения](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab6/image/2%20%D1%81%D0%BA%D1%80%D0%B8%D0%BD.jpg?raw=true){ #fig:003 width=70% }

3. Построил график изменения числа особей, восприимчивых к болезни S(t), числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных выше критического значения (рис. -@fig:004)


![График изменения числа особей, восприимчивых к болезни S(t), числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных выше критического значения](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab6/image/3%20%D1%81%D0%BA%D1%80%D0%B8%D0%BD.jpg?raw=true){ #fig:004 width=70% }



# Выводы

Ознакомился с простейшей моделью Эпидемии и построил графики с помощью языка программирования Modelica.
