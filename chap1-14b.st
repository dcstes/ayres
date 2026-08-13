| sketch p P Q r s R S a A A1 A2 b b2 B B1 B2 B3 c c2 C C1 C2 C3 F G |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
A2 _ sketch point:(-3@0).
A2 cross.
A2 name:'A2'.
S _ sketch point:(4@2).
S cross.
s _ sketch line:S to:A2.
s name:'s'.
S _ sketch point:(4@0).
S cross.
p _ sketch line:S to:A2.
p name:'p'.
B _ sketch point:(-2@-2).
B cross.
b2 _ (sketch line:B to:P) dotted.
B2 _ sketch intersectionOf:b2 and:s.
B2 name:'B2'.
C _ sketch point:(1@-2).
C cross.
c2 _ (sketch line:C to:P) dotted.
C2 _ sketch intersectionOf:c2 and:s.
C2 name:'C2'.
A _ sketch point:(-3@-5).
A cross.
R _ sketch point:(4@-5).
R cross.
r _ sketch line:R to:A.
r name:'r'.
a _ sketch line:P to:A2.
A1 _ sketch intersectionOf:a and:r.
A1 name:'A1'.
B _ sketch point:(-2@-6).
B cross.
b _ sketch line:B to:P.
B1 _ sketch intersectionOf:b and:r.
B1 name:'B1'.
C _ sketch point:(0@-6).
C cross.
c _ sketch line:C to:P.
C1 _ sketch intersectionOf:c and:r.
C1 name:'C1'.
B3 _ sketch intersectionOf:b and:p.
B3 name:'B3'.
C3 _ sketch intersectionOf:c and:p.
C3 name:'C3'.
F _ sketch line:B2 to:B3.F hide.
G _ sketch line:C2 to:C3.G hide.
Q _ sketch intersectionOf:F and:G.
Q name:'Q'.
(sketch line:A2 to:Q) color:Color green.
(sketch line:B2 to:Q) color:Color green.
(sketch line:C3 to:Q) color:Color green.