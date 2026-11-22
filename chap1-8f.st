| sketch P Ppoint A a  |
sketch _ DrGeoSketch new.
Ppoint _ 0@4.
P _ sketch point:Ppoint.
P cross.P name:'P'.

0 to: 180 by:15 do: [ :i |
A _ sketch point:((Point r: 1  degrees:i) translatedBy:Ppoint).
A cross.
a _ sketch line:A to:P.
].