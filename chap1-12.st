| sketch r r2 r3 s P R a A A2 b B B2 I p1 p2 |
sketch _ DrGeoSketch new.
P _ sketch point:0@3.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
B _ sketch point:(-2@0).
B cross.
b _ sketch line:B to:P.
r _ sketch line:A to:B.
p1 _ sketch point:(0@-2).
p1 cross.
p2 _ sketch point:(1@2).
p2 cross.
r2 _ sketch line:p1 to:p2.
r2 name:'r"'.
I _ sketch intersectionOf:r and:r2.
I name:'I'.
A name:'A'.
B name:'B'.
A2 _ sketch intersectionOf:a and:r2.
B2 _ sketch intersectionOf:b and:r2.
A2 name:'A2'.
B2 name:'B2'.
s _ sketch parallel:r at:P.
R _ sketch intersectionOf:r2 and:s.
r3 _ sketch parallel:r2 at:P.
R _ sketch intersectionOf:r and:r3.
