tests - variables
testGetLeaf
	| leafs |
	node insertLeaf: leafA.
	node insertLeaf: leafB.
	leafs := node getLeaf: node data: nil.
	self assert: (leafs at: 1) data equals: 'LeafA';
	 assert: (leafs at: 2) data equals: 'LeafB'