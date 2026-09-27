| sketch R S M A B q o p P X X1 A1 B1 a a1 b b1 x x1 AA BB XX |
sketch _ DrGeoSketch new.

R _ sketch point:(-3@3).
R name:'R'.
R cross.

S _ sketch point:(-3.5@-3).
S name:'S'.
S cross.

q _ sketch line:R to:S.

A _ sketch point:(-1@0).
A name:'A'.
A cross.

B _ sketch point:(2@0).
B name:'B'.
B cross.

o _ sketch line:A to:B.
M _ sketch intersectionOf:o and:q.
M name:'M'.

P _ sketch point:(2@1).
P name:'p'.
P cross.
p _ sketch line:M to:P.

X1 _ sketch point:(2@0.5).
X1 cross.

a _ sketch line:R to:A.
b _ sketch line:R to:B.
x _ sketch line:R to:X1.
A1 _ sketch intersectionOf:p and:a.
B1 _ sketch intersectionOf:p and:b.
X _ sketch intersectionOf:o and:x.
X1 _ sketch intersectionOf:p and:x.
X name:'X'.

a1 _ sketch line:S to:A1.
b1 _ sketch line:S to:B1.
x1 _ sketch line:S to:X1.

AA _ sketch intersectionOf:a1 and:o.
BB _ sketch intersectionOf:b1 and:o.
XX _ sketch intersectionOf:x1 and:o.
AA name:'A"'.
BB name:'B"'.
XX name:'X"'.
