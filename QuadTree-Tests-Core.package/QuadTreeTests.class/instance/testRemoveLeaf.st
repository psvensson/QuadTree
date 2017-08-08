tests - variables
testRemoveLeaf
	node insertLeaf: leafA.
	node insertLeaf: leafB.
	node removeLeaf: leafA.
	self assert: (node q2 leafs at: 1) data equals: 'LeafB';
	 assert: node leafs isNil;
	 assert: node q1 leafs size equals: 0;
	 assert: node q1 isNotNil;
	 assert: node q2 isNotNil;
	 assert: node q3 isNotNil;
	 assert: node q4 isNotNil