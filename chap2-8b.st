| sketch q P Q R r A1 a1 A2 a2 B1 b1 B2 b2 |
sketch _ DrGeoSketch new.
sketch text:'P =^ Q and q invariant then P -^r Q' at:(-5@-5).
P _ sketch point:0@2.
P cross.P name:'P'.
Q _ sketch point:(3@3).
Q cross.Q name:'Q'.
q _ sketch line:P to:Q.
q color:Color green.
q name:'q'.
A1 _ sketch point:(-2@-2).
A1 cross.
a1 _ sketch line:A1 to:P.
a1 name:'a1'.
A2 _ sketch point:(1@-2).
A2 cross.
a2 _ sketch line:A2 to:P.
a2 name:'a2'.
B1 _ sketch point:(2@-2).
B1 cross.
b1 _ sketch line:B1 to:Q.
b1 name:'b1'.
R _ sketch intersectionOf:a1 and:b1.
r _ sketch parallel:q at:R.
r name:'r'.
B2 _ sketch intersectionOf:r and:a2.
b2 _ sketch line:B2 to:Q.
b2 name:'b2'.

