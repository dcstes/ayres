| sketch P Ppoint A a p1 p2 p  |
sketch _ DrGeoSketch new.
Ppoint _ 0@4.
P _ sketch point:Ppoint.
P cross.P name:'P'.
p1 _ sketch point:(-4.8@-2).
p1 cross.
p2 _ sketch point:(4.8@-2).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.

0 to: 180 by:15 do: [ :i |
A _ sketch point:((Point r: 1  degrees:i) translatedBy:Ppoint).
A cross.
a _ sketch line:A to:P.
sketch intersectionOf:p and:a.
].