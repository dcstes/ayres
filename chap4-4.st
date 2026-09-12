| sketch A B C D E F R S o q r s t b c C1 C2 |
sketch _ DrGeoSketch new.
A _ sketch point: (3@-3).
A cross.A name:'A'.
B _ sketch point:(-3@-3).
B cross.B name:'B'.
o _ sketch line:A to:B.
R _ sketch point:(-2@1).
R cross.R name:'R'.
q _ sketch line:A to:R.
C1 _ sketch point:(-3@3).
C1 cross.
C2 _ sketch point:(-2@-3.5).
C2 cross.
c _ sketch line:C1 to:C2.
C _ sketch intersectionOf:c and:o.
C name:'C'.
S _ sketch intersectionOf:c and:q.
S name:'S'.
b _ sketch line:B to:R.
D _ sketch intersectionOf:b and:c.
D name:'D'.
t _ sketch line:A to:D.
F _ C.
1 to: 100 do: [ :i | 
	r _ sketch line:F to:R.
	E _ sketch intersectionOf:r and:t.
	s _ sketch line:S to:E.
	F _ sketch intersectionOf:s and:o.
	].