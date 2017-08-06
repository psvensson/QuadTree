tests - variables
testInsertLeaf
	| l l2 |
	node insertLeaf: leafA.
	self assert: (node leafs at: 1) equals: leafA.
	node insertLeaf: leafB.
	l := node q1 leafs at: 1.
	l2 := node q2 leafs at: 1.
	self assert: l data equals: 'LeafA'.
	self assert: l2 data equals: 'LeafB'