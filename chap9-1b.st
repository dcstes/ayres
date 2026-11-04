| sketch R S X x A a B b C c A1 a1 B1 b1 C1 c1 P p1 p2 p bc1 cb1 ac1 ca1 xc1 conic Q X1 q q1 q2 x1 K L X2 A2 |

sketch _ DrGeoSketch new.
R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:3.5@4.
S cross.S name:'S'.
A _ sketch point:-3.75@0.
A cross.A name:'a'.
a _ sketch line:A to:R.
B _ sketch point:-3.50@0.
B cross.B name:'b'.
b _ sketch line:B to:R.
C _ sketch point:-3.25@0.
C cross.C name:'c'.
c _ sketch line:C to:R.
A1 _ sketch point:-3.75@2.
A1 cross.A1 name:'a1'.
a1 _ sketch line:A1 to:S.
B1 _ sketch point:-3.50@1.5.
B1 cross.B1 name:'b1'.
b1 _ sketch line:B1 to:S.
C1 _ sketch point:-3.25@1.
C1 cross.C1 name:'c1'.
c1 _ sketch line:C1 to:S.

A _ sketch intersectionOf:a and:a1.
A name:'A'.
B _ sketch intersectionOf:b and:b1.
B name:'B'.
C _ sketch intersectionOf:c and:c1.
C name:'C'.

conic _ OrderedCollection new.
conic add:R.
conic add:S.
conic add:A.
conic add:B.
conic add:C.

bc1 _ sketch intersectionOf:b and:c1.
cb1 _ sketch intersectionOf:c and:b1.
ac1 _ sketch intersectionOf:a and:c1.
ca1 _ sketch intersectionOf:c and:a1.
p1 _ sketch line:bc1 to:cb1.
p2 _ sketch line:ac1 to:ca1.
P _ sketch intersectionOf:p1 and:p2.
P name:'P'.

-3 to: 3 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:R.
xc1 _ sketch intersectionOf:x and:c1.
xc1 hide.
p _ sketch line:P to:xc1.
p hide.
X _ sketch intersectionOf:p and:c.
X hide.
p _ sketch line:S to:X.
X _ sketch intersectionOf:x and:p.
conic add:X.
].

A _ conic at:4.
A1 _ conic at:26.

X _ conic at:6.
X1 _ conic at:15.
X color:(Color green).
X1 color:(Color green).
A color:(Color green).
A1 color:(Color green).

q1 _ sketch line:A to:A1.
q2 _ sketch line:X to:X1.
q1 color:(Color green).
q2 color:(Color green).
Q _ sketch intersectionOf:q1 and:q2.
Q name:'Q'.

a _ sketch line:X to:A.
a1 _ sketch line:X to:A1.
x _ sketch line:X1 to:A.
x1 _ sketch line:X1 to:A1.
a color:(Color green).
a1 color:(Color green).
x color:(Color green).
x1 color:(Color green).
K _ sketch intersectionOf:a and:x1.
K name:'K'.
L _ sketch intersectionOf:x and:a1.
L name:'L'.
q _ sketch line:K to:L.
q color:(Color blue).

A2 _ sketch intersectionOf:q1 and:q.
X2 _ sketch intersectionOf:q2 and:q.
(sketch line:K to:Q) color:(Color blue).
(sketch line:L to:Q) color:(Color blue).
