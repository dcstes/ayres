| sketch p pa pb q Q ra rb rarb R S A B a1 a2 a3 b1 b2 b3 H K h k T U r X |
sketch _ DrGeoSketch new.
A _ sketch point:(-3@-2).
A cross.
A name:'A'.
B _ sketch point:(0@0).
B cross.
B name:'B'.
pa _ sketch point:(-3@2).
pa cross.
pb _ sketch point:(0@2).
pb cross.
p _ sketch line:pa to:pb.
p name:'p'.
Q _ sketch point:(-2@3).
Q cross.Q name:'Q'.
S _ sketch point:(-3@0).
S cross.S name:'S'.
q _ sketch line:Q to:S.
ra _ sketch point:(-1@-1).
ra cross.
rb _ sketch point:(-2@1).
rb cross.
rarb _ sketch line:ra to:rb.
R _ sketch intersectionOf:q and:rarb.
R name:'R'.
a1 _ sketch line:A to:Q.
a2 _ sketch line:A to:R.
a3 _ sketch line:A to:S.
b1 _ sketch line:B to:Q.
b2 _ sketch line:B to:R.
b3 _ sketch line:B to:S.
H _ sketch intersectionOf:a1 and:p.
K _ sketch intersectionOf:b1 and:p.
h _ sketch line:H to:R.
k _ sketch line:K to:R.
T _ sketch intersectionOf:h and:a3.
U _ sketch intersectionOf:k and:b3.
r _ sketch line:T to:U.
X _ sketch intersectionOf:r and:p.
X name:'X'.
