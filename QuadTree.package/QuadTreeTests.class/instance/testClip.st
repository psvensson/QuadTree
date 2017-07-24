tests
testClip
	| r rtl tl rtr tr rbl bl rbr br rm m |
	r := Rect new.
	r
		x: 0;
		y: 0;
		width: 100;
		height: 100.
	rtl := Rect new.
	rtl
		x: 0;
		y: 0;
		width: 50;
		height: 50.
	tl := r clip: rtl.
	self assert: (tl at: 1) x equals: 50.
	self assert: (tl at: 1) y equals: 0.
	self assert: (tl at: 1) width equals: 50.
	self assert: (tl at: 1) height equals: 50.
	self assert: (tl at: 2) x equals: 0.
	self assert: (tl at: 2) y equals: 50.
	self assert: (tl at: 2) width equals: 100.
	self assert: (tl at: 2) height equals: 50.
	self assert: tl size equals: 2.
	rtr := Rect new.
	rtr
		x: 50;
		y: 0;
		width: 50;
		height: 50.
	tr := r clip: rtr.
	self assert: (tr at: 1) x equals: 0.
	self assert: (tr at: 1) y equals: 0.
	self assert: (tr at: 1) width equals: 50.
	self assert: (tr at: 1) height equals: 50.
	self assert: (tr at: 2) x equals: 0.
	self assert: (tr at: 2) y equals: 50.
	self assert: (tr at: 2) width equals: 100.
	self assert: (tr at: 2) height equals: 50.
	self assert: tr size equals: 2.
	rbl := Rect new.
	rbl
		x: 0;
		y: 50;
		width: 50;
		height: 50.
	bl := r clip: rbl.
	self assert: (bl at: 1) x equals: 0.
	self assert: (bl at: 1) y equals: 0.
	self assert: (bl at: 1) width equals: 100.
	self assert: (bl at: 1) height equals: 50.
	self assert: (bl at: 2) x equals: 50.
	self assert: (bl at: 2) y equals: 50.
	self assert: (bl at: 2) width equals: 50.
	self assert: (bl at: 2) height equals: 50.
	self assert: bl size equals: 2.
	rbr := Rect new.
	rbr
		x: 50;
		y: 50;
		width: 50;
		height: 50.
	br := r clip: rbr.
	self assert: (br at: 1) x equals: 0.
	self assert: (br at: 1) y equals: 0.
	self assert: (br at: 1) width equals: 100.
	self assert: (br at: 1) height equals: 50.
	self assert: (br at: 2) x equals: 0.
	self assert: (br at: 2) y equals: 50.
	self assert: (br at: 2) width equals: 50.
	self assert: (br at: 2) height equals: 50.
	self assert: br size equals: 2.
	rm := Rect new.
	rm
		x: 25;
		y: 25;
		width: 50;
		height: 50.
	m := r clip: rm.
	self assert: (m at: 1) x equals: 0.
	self assert: (m at: 1) y equals: 0.
	self assert: (m at: 1) width equals: 100.
	self assert: (m at: 1) height equals: 25.
	self assert: (m at: 2) x equals: 0.
	self assert: (m at: 2) y equals: 25.
	self assert: (m at: 2) width equals: 25.
	self assert: (m at: 2) height equals: 50.
	self assert: (m at: 3) x equals: 75.
	self assert: (m at: 3) y equals: 25.
	self assert: (m at: 3) width equals: 25.
	self assert: (m at: 3) height equals: 50.
	self assert: (m at: 4) x equals: 0.
	self assert: (m at: 4) y equals: 75.
	self assert: (m at: 4) width equals: 100.
	self assert: (m at: 4) height equals: 25