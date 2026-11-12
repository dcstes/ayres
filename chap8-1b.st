| sketch R S T X x A a B b C c A1 a1 B1 b1 C1 c1 P p xc1 pointOfPapposBlock pointOfPapposForPencilsBlock conic |

pointOfPapposForPencilsBlock _ [ :array1 :array2 |
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
	
	pt4pt1pt5pt2 _ sketch intersectionOf:pt4pt1 and:pt5pt2.
pt5pt1pt4pt2 _ sketch intersectionOf:pt5pt1 and:pt4pt2.
pt3pt1pt5pt2 _ sketch intersectionOf:pt3pt1 and:pt5pt2.
pt5pt1pt3pt2 _ sketch intersectionOf:pt5pt1 and:pt3pt2.
pap1 _ sketch line:pt4pt1pt5pt2 to:pt5pt1pt4pt2.
pt4pt1pt5pt2 hide.
pt5pt1pt4pt2 hide.
pt3pt1pt5pt2 hide.
pt5pt1pt3pt2 hide.
pap1 hide.
pap2 _ sketch line:pt3pt1pt5pt2 to:pt5pt1pt3pt2.
pap2 hide.
sketch intersectionOf:pap1 and:pap2.
	].

pointOfPapposBlock _ [ :centers :points |
		|
	pt1 pt2 pt3 pt4 pt5
	pt3pt1 pt4pt1 pt5pt1
	pt3pt2 pt4pt2 pt5pt2
	|
	pt1 _ centers at:1.
	pt2 _ centers at:2.
	pt3 _ points at:1.
	pt4 _ points at:2.
	pt5 _ points at:3.
	pt3pt1 _ sketch line:pt3 to:pt1.
	pt3pt1 hide.
	pt4pt1 _ sketch line:pt4 to:pt1.
	pt4pt1 hide.
	pt5pt1 _ sketch line:pt5 to:pt1.
	pt5pt1 hide.
	pt3pt2 _ sketch line:pt3 to:pt2.
	pt3pt2 hide.
	pt4pt2 _ sketch line:pt4 to:pt2.
	pt4pt2 hide.
	pt5pt2 _ sketch line:pt5 to:pt2.
	pt5pt2 hide.
	pointOfPapposForPencilsBlock value:{ pt3pt1. pt4pt1. pt5pt1 } value:{ pt3pt2. pt4pt2. pt5pt2 }
	].

sketch _ DrGeoSketch new.
R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:3.5@4.
S cross.S name:'S'.
A _ sketch point:-3.125@-2.
A cross.A name:'A'.
B _ sketch point:-1.125@-3.
B cross.B name:'B'.
C _ sketch point:1.125@-2.
C cross.C name:'C'.

a _ sketch line:A to:R.
b _ sketch line:B to:R.
c _ sketch line:C to:R.
a1 _ sketch line:A to:S.
b1 _ sketch line:B to:S.
c1 _ sketch line:C to:S.

conic _ OrderedCollection new.
conic add:R.
conic add:S.
conic add:A.
conic add:B.
conic add:C.

P _ pointOfPapposForPencilsBlock value:{ a. b. c } value:{ a1. b1. c1. }.
P name:'P'.

(sketch line:P to:R) color:(Color green).
(sketch line:P to:S) color:(Color green).

-3.75 to: 3.75 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:R.
xc1 _ sketch intersectionOf:x and:c1.
xc1 hide.
p _ sketch line:P to:xc1.
p hide.
X _ sketch intersectionOf:p and:c.
X hide.
p _ sketch line:S to:X.
X _ sketch intersectionOf:x and:p.
conic add:X.
].
