accessing
_grow: leaf
	| lx ly lw lh rx ry rw rh d leafs |
	lx := leaf x.
	ly := leaf y.
	lw := leaf width.
	lh := leaf height.
	rx := root x.
	ry := root y.
	rw := root width.
	rh := root height.
	lx < rx
		ifTrue: [ d := (rx - lx) / rw ceiling * rw.
			rx := rx - d.
			rw := rw + d ].
	ly < ry
		ifTrue: [ d := (ry - ly) / rh ceiling * rh.
			ry := rx - d.
			rh := rh + d ].
	lx + lw < (rx + rw)
		ifTrue: [ d := (lx + lw - (rx + rw)) / rw ceiling * rw.
			rw := rw - d ].
	ly + lh < (ry + rh)
		ifTrue: [ d := (ly + lh - (ry + rh)) / rh ceiling * rh.
			rh := rh + d ].
	leafs := OrderedCollection new.
	leafs push: leaf.
	root getLeaf: leafs rect: root.
	root := Node
		x: rx
		y: ry
		size: (rw max: rh)
		depth: 0
		maxDepth: root maxDepth - 1
		maxLeafs: root maxLeafs.
	leafs do: [ :l | root insertLeaf: l ]	.
		