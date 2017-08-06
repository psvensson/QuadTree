accessing
insertLeaf: leaf
	| isNotTooDeep wideEnough tooManyLeafs |
	leafs isNotNil
		ifTrue: [ leafs add: leaf.
			isNotTooDeep := depth < (maxDepth - 1).
			wideEnough := width > 2.
			tooManyLeafs := (leafs at: maxLeafs - 1) isNotNil.
			Transcript
				show:
					'insertLeaf depth = ' , depth asString, ' maxDepth = ' , maxDepth asString , ' maxLeafs = ' , maxLeafs asString , ' leafs size = ' , leafs size asString
						, ' isNotTooDeep = ' , isNotTooDeep asString , ' wideEnough = ' , wideEnough asString , ' tooManyLeafs = ' , tooManyLeafs asString;
				cr.
			isNotTooDeep & wideEnough & tooManyLeafs
				ifTrue: [ self split ] ]
		ifFalse: [ (leaf overlaps: self q1)
				ifTrue: [ self q1 insertLeaf: leaf ].
			(leaf overlaps: self q2)
				ifTrue: [ self q2 insertLeaf: leaf ].
			(leaf overlaps: self q3)
				ifTrue: [ self q3 insertLeaf: leaf ].
			(leaf overlaps: self q4)
				ifTrue: [ self q4 insertLeaf: leaf ] ]