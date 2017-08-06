tests - variables
testRemoveLeaf
	node insertLeaf: leafA.
	node insertLeaf: leafB.
	node removeLeaf: leafA.
	self assert: (node q2 leafs at: 1) data equals: 'LeafB'.
	self assert: node leafs isNil.
	self assert: node q1 leafs size equals: 0.
	self assert: node q1 isNotNil.
	self assert: node q2 isNotNil.
	self assert: node q3 isNotNil.
	self assert: node q4 isNotNil