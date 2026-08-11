| sketch P r s R S A b B B1 B2 c C C1 C2 |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
A name:'A1=A2'.
R _ sketch point:(4@0).
R cross.
r _ sketch line:R to:A.
r name:'r'.
S _ sketch point:(4@2).
S cross.
s _ sketch line:S to:A.
s name:'s'.
B _ sketch point:(-2@-2).
B cross.
b _ sketch line:B to:P.
b name:'b'.
B1 _ sketch intersectionOf:b and:r.
B1 name:'B1'.
B2 _ sketch intersectionOf:b and:s.
B2 name:'B2'.
C _ sketch point:(0@-2).
C cross.
c _ sketch line:C to:P.
c name:'c'.
C1 _ sketch intersectionOf:c and:r.
C1 name:'C1'.
C2 _ sketch intersectionOf:c and:s.
C2 name:'C2'.
