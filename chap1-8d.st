| sketch P A a   |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
-3 to: 3 by:0.25 do: [ :i |
A _ sketch point:(i@0).
A cross.
a _ sketch line:A to:P.
].