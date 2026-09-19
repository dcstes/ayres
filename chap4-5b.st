| sketch p t f g h i Sinf Rinf P0 P1 P2 E0 E1 |
sketch _ DrGeoSketch new.

P0 _ sketch point:(-3@-2).
P0 cross.P0 name:'P0'.
P1 _ sketch point:(-2@-2).
P1 cross.P1 name:'P1'.
p _ sketch line:P0 to:P1.
Sinf _ sketch point:(1@3).
Sinf cross.
Rinf _ sketch point:(2@3).
Rinf cross.
f _ sketch line:P0 to:Rinf.
g _ sketch line:P1 to:Sinf.
E0 _ sketch intersectionOf:f and:g.
E0 name:'E0'.
t _ sketch parallel: p at: E0.
h _ sketch parallel:f at:P1.
E1 _ sketch intersectionOf:h and:t.
E1 name:'E1'.
i _ sketch parallel:g at:E1.
P2 _ sketch intersectionOf:i and:p.
P2 name:'P2'.