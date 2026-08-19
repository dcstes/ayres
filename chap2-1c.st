| sketch p P a A b B c C d D p1 p2 AC AD BC BD block1a block2a block1b block2b block1c block2c block1d block2d signlenBlock|
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


sketch text:'cross ratio (A,B;C,D)=(C,D;A,B)' at:-5@3.
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
sketch text:'(A,B;C,D)' at:-5@-3.
block1a _ [(signlenBlock value:A value:C value:p) / (signlenBlock value:B value:C value:p)].
block2a _ [(signlenBlock value:A value:D value:p) / (signlenBlock value:B value:D value:p)].
sketch value:[(block1a value) /(block2a value)] at:-1@-3.
sketch text:'(C,D;A,B)' at:-5@-4.
block1c _ [(signlenBlock value:C value:A value:p) / (signlenBlock value:D value:A value:p)].
block2c _ [(signlenBlock value:C value:B value:p) / (signlenBlock value:D value:B value:p)].
sketch value:[(block1c value) /(block2c value)] at:-1@-4.
sketch text:'(B,A;D,C)' at:-5@-5.
block1b _ [(signlenBlock value:B value:D value:p) / (signlenBlock value:A value:D value:p)].
block2b _ [(signlenBlock value:B value:C value:p) / (signlenBlock value:A value:C value:p)].
sketch value:[(block1b value) /(block2b value)] at:-1@-5.
sketch text:'(D,C;B,A)' at:-5@-6.
block1d _ [(signlenBlock value:D value:B value:p) / (signlenBlock value:C value:B value:p)].
block2d _ [(signlenBlock value:D value:A value:p) / (signlenBlock value:C value:A value:p)].
sketch value:[(block1d value) /(block2d value)] at:-1@-6.