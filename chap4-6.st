| sketch A B C a b c X Y z A1 B1 C1 P p r Q R S bp br sq A2 B2 C2 a1 b1 a2 b2 c2 O |
sketch _ DrGeoSketch new.

A _ sketch point:(-2@-3).
A cross. A name:'A'.
B _ sketch point:(0@-3).
B cross. B name:'B'.
C _ sketch point:(-1@-1).
C cross. C name:'C'.
a _ sketch line:B to:C.
b _ sketch line:A to:C.
c _ sketch line:A to:B.
X _ sketch point:(-2@-1).
X cross. 
Y _ sketch point:(3.5@-3.5).
Y cross. 
z _ sketch line:X to:Y.
z color:(Color green).
B1 _ sketch intersectionOf:z and:b.
B1 name:'B1'.
A1 _ sketch intersectionOf:z and:a.
A1 name:'A1'.
C1 _ sketch intersectionOf:z and:c.
C1 name:'C1'.
P _ sketch point:(-1@3).
P cross. P name:'P'.
p _ sketch line:P to:A.
r _ sketch line:P to:C1.
R _ sketch intersectionOf:b and:r.
R name:'R'.
bp _ sketch line:B to:P.
br _ sketch line:B to:R.
S _ sketch intersectionOf:bp and:b.
Q _ sketch intersectionOf:br and:p.
sq _ sketch line:S to:Q.
C2 _ sketch intersectionOf:c and:sq.
C2 name:'C2'.
a1 _ sketch line:B1 to:C2.
A2 _ sketch intersectionOf:a and:a1.
A2 name:'A2'.
b1 _ sketch line:A1 to:C2.
B2 _ sketch intersectionOf:b and:b1.
B2 name:'B2'.
a2 _ sketch line:A to:A2.
b2 _ sketch line:B to:B2.
c2 _ sketch line:C to:C2.
a2 color:(Color red).
b2 color:(Color red).
c2 color:(Color red).
O _ sketch intersectionOf:a2 and:b2.
O name:'O'.