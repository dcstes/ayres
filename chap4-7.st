| sketch p q r s t u P Q R S a b c A B C D E F G I J di dj ei ej K L M N |
sketch _ DrGeoSketch new.

P _ sketch point:(0.3@1).
P cross.P name:'P'.
Q _ sketch point:(-2@-2.8).
Q cross.Q name:'Q'.
R _ sketch point:(2@-3).
R cross.R name:'R'.
S _ sketch point:(0@-2).
S cross.S name:'S'.
p _ sketch line:P to:Q.
q _ sketch line:Q to:R.
r _ sketch line:R to:S.
s _ sketch line:S to:P.
t _ sketch line:S to:Q.
u _ sketch line:R to:P.
A _ sketch intersectionOf:r and:p.
A color:Color green.A name:'A'.
B _ sketch intersectionOf:s and:q.
B color:Color green.B name:'B'.
C _ sketch intersectionOf:u and:t.
C color:Color green.C name:'C'.
c _ sketch line:A to:B.
a _ sketch line:B to:C.
b _ sketch line:A to:C.
a color:Color green.
b color:Color green.
c color:Color green.
D _ sketch intersectionOf:c and:u.
D name:'D'.
E _ sketch intersectionOf:c and:t.
E name:'E'.
F _ sketch intersectionOf:a and:p.
F name:'F'.
G _ sketch intersectionOf:a and:r.
G name:'G'.
I _ sketch intersectionOf:b and:s.
I name:'I'.
J _ sketch intersectionOf:b and:q.
J name:'J'.
di _ sketch line:D to:I.
dj _ sketch line:D to:J.
ei _ sketch line:E to:I.
ej _ sketch line:E to:J.
K _ sketch intersectionOf:p and:di.
K name:'K'.
L _ sketch intersectionOf:r and:dj.
L name:'L'.
M _ sketch intersectionOf:r and:ei.
M name:'M'.
N _ sketch intersectionOf:p and:ej.
N name:'N'.
(sketch line:B to:M) color:(Color red).
(sketch line:B to:N) color:(Color red).
