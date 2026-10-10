| sketch O a A aa AA x X r R1 R2 a1 x1 v V xx XX xx1|
sketch _ DrGeoSketch new.
O _ sketch point:0@4.
O cross.O name:'O'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:O.
a name:'a'.
AA _ sketch point:(-2@-2).
AA cross.
aa _ sketch line:AA to:O.
aa name:'aa'.
X _ sketch point:(0@-2).
X cross.
x _ sketch line:X to:O.
x name:'x'.
R1 _ sketch point:(-3@2).
R1 cross.
R2 _ sketch point:(3@1).
R2 cross.
r _ sketch line:R1 to:R2.
AA _ sketch intersectionOf:aa and:r.
AA name:'A"'.
X _ sketch intersectionOf:x and:r.
X name:'X'.
a1 _ sketch line:A to:AA.
x1 _ sketch line:A to:X.
V _ sketch point:(3@2).
V cross.
v _ sketch line:AA to:V.
V name:'v'.
V _ sketch intersectionOf:x1 and:v.
V name:'V'.
xx _ sketch line:O to:V.
XX _ sketch intersectionOf:r and:xx.
XX name:'X"'.
xx1 _ sketch line:A to:XX.
