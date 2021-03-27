---
# Front matter
lang: ru-RU
title: "Отчет по лабораторной работе №7"
subtitle: "Модель распространения рекламы - вариант 35"
author: "Гаджиев Нурсултан НПИ-01-18"

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

Изучить модель эффективности рекламы

# Задание


1.	Изучить модель эфеективности рекламы
2.	Построить графики распространения рекламы в заданных случайх
3.	Определить для случая 2 момент времени, в который скорость распространения рекламы будет максимальной


# Выполнение лабораторной работы

## Постановка задачи

Организуется рекламная кампания нового товара или услуги. Необходимо, чтобы прибыль будущих продаж с избытком покрывала издержки на рекламу. Вначале расходы могут превышать прибыль, поскольку лишь малая часть потенциальных покупателей будет информирована о новинке. Затем, при увеличении числа продаж, возрастает и прибыль, и, наконец, наступит момент, когда рынок насытиться, и рекламировать товар станет бесполезным.

Предположим, что торговыми учреждениями реализуется некоторая продукция, о которой в момент времени $t$ из числа потенциальных покупателей $N$ знает лишь $n$ покупателей. Для ускорения сбыта продукции запускается реклама по радио, телевидению и других средств массовой информации. После запуска рекламной кампании информация о продукции начнет распространяться среди потенциальных покупателей путем общения друг с другом. Таким образом, после запуска рекламных объявлений скорость изменения числа знающих о продукции людей пропорциональна как числу знающих о товаре покупателей, так и числу покупателей о нем не знающих

Модель рекламной кампании описывается следующими величинами.
Считаем, что $\frac{dn}{dt}$ - скорость изменения со временем числа потребителей, узнавших о товаре и готовых его купить,
$t$ - время, прошедшее с начала рекламной кампании,
$N$ - общее число потенциальных платежеспособных покупателей,
$n(t)$ - число  уже информированных клиентов.
Эта величина пропорциональна числу покупателей, еще не знающих о нем, это описывается следующим образом
$\alpha _1(t)(N-n(t))$, где $\alpha _1>0$ -  характеризует интенсивность рекламной кампании (зависит от затрат на рекламу в данный момент времени).
Помимо этого, узнавшие о товаре потребители также распространяют полученную информацию среди потенциальных покупателей, не знающих о нем (в этом случае работает т.н. сарафанное радио). Этот вклад в рекламу описывается величиной  $\alpha _2(t)n(t)(N-n(t))$. эта величина увеличивается с увеличением потребителей узнавших о товаре.

Математическая модель распространения рекламы описывается уравнением:

$$\frac{dn}{dt} = (\alpha _1(t) + \alpha _2(t)n(t))(N-n(t))$$

При $\alpha _1(t) >> \alpha _2(t)$ получается модель типа модели Мальтуса, решение которой имеет вид

![График решения уравнения модели Мальтуса](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/%D1%81%D0%BA%D1%80%D0%B8%D0%BD%201.jpg?raw=true){ #fig:001 width=70% height=70% }

В обратном случае $\alpha _1(t) << \alpha _2(t)$ получаем уравнение логистической кривой

![График логистической кривой](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/%D1%81%D0%BA%D1%80%D0%B8%D0%BD%202.jpg?raw=true){ #fig:002 width=70% height=70% }



## Выполнение работы

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1.	$\frac{dn}{dt} = (0.83 + 0.000083n(t))(N-n(t))$
2.	$\frac{dn}{dt} = (0.000083 + 0.83n(t))(N-n(t))$
3.	$\frac{dn}{dt} = (0.83\sin (t) + 0.83n(t)\sin (t) )(N-n(t))$

При этом объем аудитории $N = 1030$, в начальный момент о товаре знает 8 человек.

Для случая 2 определите в какой момент времени скорость распространения рекламы будет иметь максимальное значение.


**Код программы**

```

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


```

Ниже приведен скриншот кода программы, реализованный на языке программирования Modelica (рис. -@fig:003)

![Код программы](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/%D0%BA%D0%BE%D0%B4.jpg?raw=true){ #fig:003 width=70% }  


## Результат

![Построим график распространения рекламы, математическая модель которой описывается следующим уравнением: $\frac{dn}{dt} = (0.88+0.00008n(t))(N-n(t))$](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/1%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:004 width=70% }  


![Построим график распространения рекламы, математическая модель которой описывается следующим уравнением: $\frac{dn}{dt} = (0.00001+0.81n(t))(N-n(t))$](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/2%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:005 width=70% height=70% }

Также нам требуется определить, каким будет максимальное значение скорости распространения рекламы в данном случае. Скорость распространения рекламы - производная по графику распространения рекламы. Следовательно, максимальное значение будет там, где значение графика скорости максимально. Из нижеприведенного рисунка (рис -@fig:006) мы видим, что значение графика производной максимально в начальный момент времени t0 = 0.

![Построим график распространения рекламы, математическая модель которой описывается следующим уравнением: $\frac{dn}{dt} = (0.00001+0.81n(t))(N-n(t))$](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/2%201%20%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:006 width=70% height=70% }


![Построим график распространения рекламы, математическая модель которой описывается следующим уравнением: $\frac{dn}{dt} = (0.18t+0.31tn(t))(N-n(t))$](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/3%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:007 width=70% height=70% }


# Ответы на вопросы

1. Записать модель Мальтуса (дать пояснение, где используется данная модель)

$$ \frac{\partial N}{\partial t} = rN $$

Данная модель используется для расчета изменения популяции особей животных.

2. Записать уравнение логистической кривой (дать пояснение, что описывает данное уравнение)

$$ \frac{\partial P}{\partial t} = rP(1 - \frac{P}{K}) $$

Исходные предположения для вывода уравнения при рассмотрении популяционной динамики выглядят следующим образом:

- скорость размножения популяции пропорциональна её текущей численности, при прочих равных условиях;
- скорость размножения популяции пропорциональна количеству доступных ресурсов, при прочих равных условиях. Таким образом, второй член уравнения отражает конкуренцию за ресурсы, которая ограничивает рост популяции.

3. На что влияет коэффициент $\alpha_1(t)$ и $\alpha_2(t)$ в модели распространения рекламы

$\alpha_1(t)$ — интенсивность рекламной кампании, зависящая от затрат

$\alpha_2(t)$ — интенсивность рекламной кампании, зависящая от сарафанного радио

4. Как ведет себя рассматриваемая модель при $\alpha_1(t) \gg \alpha_2(t)$

При $\alpha_1(t) \gg \alpha_2(t)$ получается модель типа модели Мальтуса (рис. -@fig:008):

![График решения уравнения модели Мальтуса](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/1%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:008 width=70% }

5. Как ведет себя рассматриваемая модель при $\alpha_1(t) \ll \alpha_2(t)$

При $\alpha_1(t) \ll \alpha_2(t)$ получаем уравнение логистической кривой (рис. -@fig:009):

![График логистической кривой](https://github.com/NursultanGazdhiev/NursultanGazdhiev/blob/master/lab7/image/3%20%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D0%BA.jpg?raw=true){ #fig:009 width=70% }


# Выводы

В ходе выполнения лабораторной работы была изучена модель эффективности рекламы и построены графики.
