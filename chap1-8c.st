| sketch P A a p1 p2 p  |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
p1 _ sketch point:(-4.8@-2).
p1 cross.
p2 _ sketch point:(4.8@-2).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
-3 to: 3 by:0.25 do: [ :i |
A _ sketch point:(i@0).
A cross.
a _ sketch line:A to:P.
sketch intersectionOf:p and:a.
].