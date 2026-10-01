| sketch O m M a A aa AA b B bb BB P PP p a1 b1 AP BP r s A1 B1 X x XX X1 x1 xx Q n |
sketch _ DrGeoSketch new.

O _ sketch point:(0@3).
O name:'O'.
O cross.

M _ sketch point:(3@-3).
M cross.
M name:'m'.

m _ sketch line:O to:M.
m color:(Color red).

A _ sketch point:(-1@-3).
A cross.
A name:'a'.
a _ sketch line:O to:A.

B _ sketch point:(0@-3).
B cross.
B name:'b'.
b _ sketch line:O to:B.

AA _ sketch point:(2@-3).
AA cross.
AA name:'aa'.
aa _ sketch line:O to:AA.

BB _ sketch point:(1@-3).
BB cross.
BB name:'bb'.
bb _ sketch line:O to:BB.

P _ sketch point:(3@-1).
P cross.
PP _ sketch point:(-3@-2).
PP cross.
p _ sketch line:P to:PP.

P _ sketch intersectionOf:m and:p.
P name:'P'.

AP _ sketch point:(-2@-3.5).
AP cross.
a1 _ sketch line:P to:AP.

BP _ sketch point:(-1@-3.5).
BP cross.
b1 _ sketch line:P to:BP.

A _ sketch intersectionOf:a and:a1.
A name:'A'.
B _ sketch intersectionOf:b and:b1.
B name:'B'.

r _ sketch line:A to:B.
r color:(Color green).

A1 _ sketch intersectionOf:aa and:a1.
A1 name:'A1'.
B1 _ sketch intersectionOf:bb and:b1.
B1 name:'B1'.

s _ sketch line:A1 to:B1.
s color:(Color green).

X _ sketch point:(-2@-2).
X cross.
X name:'x'.
x _ sketch line:O to:X.

X _ sketch intersectionOf:r and:x.
X name:'X'.
x1 _ sketch line:P to:X.

X1 _ sketch intersectionOf:s and:x1.
X1 name:'X1'.

xx _ sketch line:O to:X1.

Q _ sketch intersectionOf:r and:s.
Q name:'Q'.

n _ sketch line:O to:Q.
n color:(Color red).
