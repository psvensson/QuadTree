tests
testNodeMergeMigrateLeafs
	|  |
	node mockInsertLeaf:  leafA .
	node split.
	node merge.
	self assert: ((node leafs at:1) data  ) isNotNil .
	
	