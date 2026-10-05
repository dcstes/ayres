| sketch R S P Q T r s p q u v O1 O2 o X Y Z X1 Y1 Z1 |
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

sketch text:'(X,Y,Z,X1) -^ (X1,Y1,Z1,X)' at:-3@-3.

