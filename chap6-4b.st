| sketch R S P Q r s p q u v O1 O2 o X Y Z X1 Y1 Z1 U V W x X2 C C1 c f xC xY xY1 xX1 D1 D2 D3 |
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
q _ sketch line:P to:S.
r _ sketch line:S to:Q.
u _ sketch line:R to:Q.
v _ sketch line:R to:P.
D1 _ sketch intersectionOf:u and:q.
D2 _ sketch intersectionOf:v and:r.
D3 _ sketch intersectionOf:p and:s.
(sketch line:D1 to:D2) color:(Color green).
(sketch line:D1 to:D3) color:(Color green).
(sketch line:D2 to:D3) color:(Color green).
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
U _ sketch point:(-2@4).
U cross. U name:'U'.
X2 _ sketch point:(2@4).
X2 cross.X2 name:'x'.
x _ sketch line:X to:X2.
C _ sketch point:(-1@-3).
C cross. 
c _ sketch line:U to:C.
C _ sketch intersectionOf:c and:o.
C name:'C'.
xC _ sketch intersectionOf:x and:c.
f _ sketch line:U to:X1.
xX1 _ sketch intersectionOf:x and:f.
c _ sketch line:U to:Y.
xY _ sketch intersectionOf:x and:c.
c _ sketch line:U to:Y1.
xY1 _ sketch intersectionOf:x and:c.
c _ sketch line:Y1 to:xY.
V _ sketch intersectionOf:f and:c.
V name:'V'.
c _ sketch line:Y1 to:xC.
W _ sketch intersectionOf:f and:c.
W name:'W'.
c _ sketch line:xY to:W.
C1 _ sketch intersectionOf:o and:c.
C1 name:'C1'.