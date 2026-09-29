| sketch O m M a A b B Q R r P A1 a1 aa bb s b1 AA BB x X XX x1 xx|
sketch _ DrGeoSketch new.

O _ sketch point:(0@3).
O name:'O'.
O cross.

M _ sketch point:(-3@-3).
M cross.
M name:'m'.

m _ sketch line:O to:M.

A _ sketch point:(-1@-3).
A cross.
A name:'a'.
a _ sketch line:O to:A.

B _ sketch point:(0@-3).
B cross.
B name:'b'.
b _ sketch line:O to:B.

Q _ sketch point:(-3.5@-2).
Q cross.

R _ sketch point:(3.5@-1).
R cross.
R name:'r'.

r _ sketch line:Q to:R.
Q _ sketch intersectionOf:m and:r.
Q name:'Q'.

P _ sketch point:(-3.5@2).
P cross.

S _ sketch point:(3.5@-3).
S cross.
S name:'s'.

s _ sketch line:Q to:S.

A _ sketch intersectionOf:a and:r.
B _ sketch intersectionOf:b and:r.
A name:'A'.
B name:'B'.
a1 _ sketch line:P to:A.
P _ sketch intersectionOf:a1 and:m.
P name:'P'.
b1 _ sketch line:P to:B.
AA _ sketch intersectionOf:s and:a1.
BB _ sketch intersectionOf:s and:b1.
AA name:'A"'.
BB name:'B"'.
aa _ sketch line:O to:AA.
bb _ sketch line:O to:BB.

X _ sketch point:(-2@-3.5).
X cross.
x _ sketch line:O to:X.
X _ sketch intersectionOf:r and:x.
X name:'X'.
x1 _ sketch line:P to:X.
XX _ sketch intersectionOf:s and:x1.
XX name:'X"'.
xx _ sketch line:O to:XX.

