| sketch R S X x A a B b C c A1 a1 B1 b1 C1 c1 |
sketch _ DrGeoSketch new.
R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:2@4.
S cross.S name:'S'.
A _ sketch point:-3.75@0.
A cross.A name:'a'.
a _ sketch line:A to:R.
B _ sketch point:-3.50@0.
B cross.B name:'b'.
b _ sketch line:B to:R.
C _ sketch point:-3.25@0.
C cross.C name:'c'.
c _ sketch line:C to:R.
A1 _ sketch point:-3.75@2.
A1 cross.A1 name:'a1'.
a1 _ sketch line:A1 to:S.
B1 _ sketch point:-3.50@1.5.
B1 cross.B1 name:'b1'.
b1 _ sketch line:B1 to:S.
C1 _ sketch point:-3.25@1.
C1 cross.C1 name:'c1'.
c1 _ sketch line:C1 to:S.
-3 to: 3 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:R.
].
A _ sketch intersectionOf:a and:a1.
A name:'A'.
B _ sketch intersectionOf:b and:b1.
B name:'B'.
C _ sketch intersectionOf:c and:c1.
C name:'C'.
