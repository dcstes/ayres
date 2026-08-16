| sketch p P a A b B c C d D p1 p2 AC AD BC BD block1 block2 signlenBlock|
sketch _ DrGeoSketch new.


signlenBlock _ [ :pt1 :pt2 :line | 
	| point1 point2 u u12 dist dotprod |
	u _ line mathItem direction.
	point1 _ pt1 mathItem point.
	point2 _ pt2 mathItem point.
	u12 _ point2 - point1.
	dist _ point1 dist:point2.
	dotprod _ u dotProduct:u12.
	dist * (dotprod sign) 
	].


sketch text:'cross ratio (A,B;C,D)=(AB,C)/(AB,D)' at:-5@3.
P _ sketch point:0@4.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
a name:'a'.
B _ sketch point:(-2@0).
B cross.
b _ sketch line:B to:P.
b name:'b'.
C _ sketch point:(0@-1).
C cross.
c _ sketch line:C to:P.
c name:'c'.
D _ sketch point:(2@-1).
D cross.
d _ sketch line:D to:P.
d name:'d'.
p1 _ sketch point:(-2@-2).
p1 cross.
p2 _ sketch point:(1@-2).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
A _ sketch intersectionOf:p and:a.
B _ sketch intersectionOf:p and:b.
C _ sketch intersectionOf:p and:c.
D _ sketch intersectionOf:p and:d.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
AC _ sketch segment: A to:C.
AC hide.
BC _ sketch segment:B to:C.
BC hide.
AD _ sketch segment:A to:D.
AD hide.
BD _ sketch segment:B to:D.
BD hide.
sketch text:'AC/BC' at:-5@-5.
sketch text:'AD/BD' at:-5@-4.
sketch text:'(A,B;C,D)' at:-5@-3.
block1 _ [(signlenBlock value:A value:C value:p) / (signlenBlock value:B value:C value:p)].
block2 _ [(signlenBlock value:A value:D value:p) / (signlenBlock value:B value:D value:p)].
sketch value:block1 at:-1@-5.
sketch value:block2 at:-1@-4.
sketch value:[(block1 value) /(block2 value)] at:-1@-3.

