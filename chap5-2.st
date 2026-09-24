| sketch r s r1 r2 s1 s2 a a1 a2 A A1 b b1 b2 bb B B1 C C1 c c1 c2 cc d d1 dd D D1 X Y Z p |
sketch _ DrGeoSketch new.
r1 _ sketch point:(0.3@1).
r1 cross.
r2 _ sketch point:(3@2).
r2 cross.
s1 _ sketch point:(-2@-2).
s1 cross.
s2 _ sketch point:(3@-3).
s2 cross.
r _ sketch line:r1 to:r2.
s _ sketch line:s1 to:s2.
a1 _ sketch point:(-3@3).
a1 cross.
a2 _ sketch point:(-3@-3).
a2 cross.
a _ sketch line:a1 to:a2.
a color:(Color green).
A1 _ sketch intersectionOf:a and:r.
A1 name:'A1'.
A _ sketch intersectionOf:a and:s.
A name:'A'.
b1 _ sketch point:(-2@3).
b1 cross.
b2 _ sketch point:(-2@-3).
b2 cross.
b _ sketch line:A to:b1.
bb _ sketch line:A1 to:b2.
B1 _ sketch intersectionOf:b and:r.
B1 name:'B1'.
B _ sketch intersectionOf:bb and:s.
B name:'B'.
c1 _ sketch point:(0@3).
c1 cross.
c2 _ sketch point:(0@-3).
c2 cross.
c _ sketch line:A to:c1.
cc _ sketch line:A1 to:c2.
C1 _ sketch intersectionOf:c and:r.
C1 name:'C1'.
C _ sketch intersectionOf:cc and:s.
C name:'C'.
X _ sketch intersectionOf:b and:bb.
Y _ sketch intersectionOf:c and:cc.
p _ sketch line:X to:Y.
p color:(Color red).
d1 _ sketch point:(2@3).
d1 cross.
d _ sketch line:A to:d1.
D1 _ sketch intersectionOf:d and:r.
D1 name:'D1'.
Z _ sketch intersectionOf:p and:d.
dd _ sketch line:A1 to:Z.
D _ sketch intersectionOf:dd and:s.
D name:'D'.