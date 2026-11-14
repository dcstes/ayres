| sketch R R1 S X A B C A1 B1 C1 a b c a1 b1 c1 a2 b2 c2 x r1 r2 r s1 s2 s AA1 BB1 CC1 AC1 A1C BC1 B1C p p1 p2 A1X X1 X2 AX2 S1 S2 lineOfPapposBlock |

sketch _ DrGeoSketch new.
R _ sketch point:3@4.
R cross.R name:'R'.

lineOfPapposBlock _ [ :array1 :array2 |
	|
	pap1 pap2 
	pt3pt1 pt4pt1 pt5pt1
	pt3pt2 pt4pt2 pt5pt2
	pt4pt1pt5pt2
	pt5pt1pt4pt2
	pt3pt1pt5pt2
	pt5pt1pt3pt2
	|
	pt3pt1 _ array1 at:1.
	pt4pt1 _ array1 at:2.
	pt5pt1 _ array1 at:3.
	pt3pt2 _ array2 at:1.
	pt4pt2 _ array2 at:2.
	pt5pt2 _ array2 at:3.
	
	pt4pt1pt5pt2 _ sketch line:pt4pt1 to:pt5pt2.
pt5pt1pt4pt2 _ sketch line:pt5pt1 to:pt4pt2.
pt3pt1pt5pt2 _ sketch line:pt3pt1 to:pt5pt2.
pt5pt1pt3pt2 _ sketch line:pt5pt1 to:pt3pt2.
pap1 _ sketch intersectionOf:pt4pt1pt5pt2 and:pt5pt1pt4pt2.
pt4pt1pt5pt2 hide.
pt5pt1pt4pt2 hide.
pt3pt1pt5pt2 hide.
pt5pt1pt3pt2 hide.
pap1 hide.
pap2 _ sketch intersectionOf:pt3pt1pt5pt2 and:pt5pt1pt3pt2.
pap2 hide.
sketch line:pap1 to:pap2.
	].

r1 _ sketch point:(-4@-2).
r1 cross.
r2 _ sketch point:(4.8@3).
r2 cross.
r _ sketch line:r1 to:r2.
r name:'r'.
s1 _ sketch point:(-4@3).
s1 cross.
s2 _ sketch point:(4@1.5).
s2 cross.
s _ sketch line:s2 to:s1.
s name:'s'.
S _ sketch intersectionOf:r and:s.
S name:'S'.
a1 _ sketch point:(1@2).
a1 cross.
b1 _ sketch point:(-3@2).
b1 cross.
c1 _ sketch point:(-2@2).
c1 cross.
a2 _ sketch point:(0@-2).
a2 cross.
b2 _ sketch point:(-1@-2).
b2 cross.
c2 _ sketch point:(-3.75@-3).
c2 cross.
a _ sketch line:a1 to:a2.
a name:'a'.
b _ sketch line:b1 to:b2.
b name:'b'.
c _ sketch line:c1 to:c2.
c name:'c'.
A _ sketch intersectionOf:a and:r.
A name:'A'.
B _ sketch intersectionOf:b and:r.
B name:'B'.
C _ sketch intersectionOf:c and:r.
C name:'C'.
A1 _ sketch intersectionOf:a and:s.
A1 name:'A1'.
B1 _ sketch intersectionOf:b and:s.
B1 name:'B1'.
C1 _ sketch intersectionOf:c and:s.
C1 name:'C1'.

a color:(Color red).
b color:(Color red).
c color:(Color red).
r color:(Color red).
s color:(Color red).

p _ lineOfPapposBlock value:{ A. B. C } value:{ A1.B1.C1 }.
p color:(Color blue).
p name:'p'.
-3 to: 3 by:0.25 do: [ :i |
X _ sketch point:(i@-3).
X cross.
x _ sketch line:X to:R.
X _ sketch intersectionOf:r and:x.
X hide.
A1X _ sketch line:A1 to:X.
A1X hide.
X2 _ sketch intersectionOf:p and:A1X.
X2 hide.
AX2 _ sketch line:A to:X2.
AX2 hide.
X1 _ sketch intersectionOf:s and:AX2.
X1 hide.
x _ sketch line:X to:X1.
x color:(Color red).

].
S1 _ sketch intersectionOf:p and:s.
S1 color:(Color green). 
S2 _ sketch intersectionOf:p and:r.
S2 color:(Color green). 