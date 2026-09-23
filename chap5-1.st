| sketch r s r1 r2 s1 s2 a a1 a2 A A1 |
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
A1 _ sketch intersectionOf:a and:r.
A1 name:'A1'.
A _ sketch intersectionOf:a and:s.
A name:'A'.