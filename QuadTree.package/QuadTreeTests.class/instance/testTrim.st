tests
testTrim
	| r1 r2 o |
	r1 := Rect
		x: 0
		y: 0
		width: 100
		height: 100.
	r2 := Rect
		x: 25
		y: 25
		width: 100
		height: 100.
	o := r1 trim: r2.
	self assert: o x equals: 25;
	 assert: o y equals: 25;
	 assert: o width equals: 75;
	 assert: o height equals: 75