tests
testSplit
	| r rects r1 r2 r3 r4 |
	r := Rect
		x: 0
		y: 0
		width: 100
		height: 100.
	rects := r split.
	r1 := rects at: 1.
	r2 := rects at: 2.
	r3 := rects at: 3.
	r4 := rects at: 4.
	self assert: r1 x equals: 0;
	 assert: r1 y equals: 0;
	 assert: r1 width equals: 50;
	 assert: r1 height equals: 50;
	 assert: r2 x equals: 50;
	 assert: r2 y equals: 0;
	 assert: r2 width equals: 50;
	 assert: r2 height equals: 50;
	 assert: r3 x equals: 0;
	 assert: r3 y equals: 50;
	 assert: r3 width equals: 50;
	 assert: r3 height equals: 50;
	 assert: r4 x equals: 50;
	 assert: r4 y equals: 50;
	 assert: r4 width equals: 50;
	 assert: r4 height equals: 50