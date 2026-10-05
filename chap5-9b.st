| sketch R S P Q T r s p q u v V O1 O2 o X Y Z X1 Y1 Z1 H1 H2 h G Y2X Y2Z X2Y Z2Y P1 P2 axis X2 Y2 Z2 D d DX2 P3 D2 XP3 e D1 GX1 GY1 GZ1 |
sketch _ DrGeoSketch new.

R _ sketch point:(1@4).
R cross. R name:'R'.
S _ sketch point:(-0.5@2).
S cross. S name:'S'.
P _ sketch point:(0@1).
P cross. P name:'P'.
Q _ sketch point:(1@1.8).
Q cross. Q name:'Q'.
p _ sketch line:R to:S.
s _ sketch line:P to:Q.
T _ sketch intersectionOf:p and:s.
T name:'T'.
q _ sketch line:P to:S.
r _ sketch line:S to:Q.
u _ sketch line:R to:Q.
v _ sketch line:R to:P.
O1 _ sketch point:(-3@0).
O1 cross. 
O2 _ sketch point:(3@1.3).
O2 cross. 
o _ sketch line:O1 to:O2.
X _ sketch intersectionOf:p and:o.
X1 _ sketch intersectionOf:s and:o.
Y _ sketch intersectionOf:v and:o.
Y1 _ sketch intersectionOf:r and:o.
Z _ sketch intersectionOf:u and:o.
Z1 _ sketch intersectionOf:q and:o.
X name:'X'.
Y name:'Y'.
Z name:'Z'.
X1 name:'X1'.
Y1 name:'Y1'.
Z1 name:'Z1'.

sketch text:'(X,Y,Z,D) -^ (X1,Y1,Z1,D1)' at:-3@-3.
G _ sketch point:(-3@4).
G cross. G name:'G'.

H1 _ sketch point:(-3@1).
H1 cross. 
H2 _ sketch point:(3@2).
H2 cross. 
h _ sketch line:H1 to:H2.

GX1 _ sketch line:G to:X1.
GY1 _ sketch line:G to:Y1.
GZ1 _ sketch line:G to:Z1.

X2 _ sketch intersectionOf:GX1 and:h.
X2 name:'X2'.
Y2 _ sketch intersectionOf:GY1 and:h.
Y2 name:'Y2'.
Z2 _ sketch intersectionOf:GZ1 and:h.
Z2 name:'Z2'.
Y2X _ sketch line:Y2 to:X.
Y2Z _ sketch line:Y2 to:Z.
X2Y _ sketch line:X2 to:Y.
Z2Y _ sketch line:Z2 to:Y.
Y2X hide.
Y2Z hide.
X2Y hide.
Z2Y hide.
P1 _ sketch intersectionOf:Y2X and:X2Y.
P2 _ sketch intersectionOf:Z2Y and:Y2Z.
axis _ sketch line:P1 to:P2.
axis color:(Color red).

D _ sketch point:(-3@-3).
D cross.
d _ sketch line:R to:D.
D _ sketch intersectionOf:d and:o.
D name:'D'.
DX2 _ sketch line:D to:X2.
P3 _ sketch intersectionOf:axis and:DX2.
XP3 _ sketch line:X to:P3.
D2 _ sketch intersectionOf:h and:XP3.
D2 name:'D2'.
e _ sketch line:G to:D2.
D1 _ sketch intersectionOf:e and:o.
D1 name:'D1'.