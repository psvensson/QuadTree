accessing
_grow: leaf
	| lx ly lw lh rx ry rw rh d leafs temp|
	lx := leaf x.
	ly := leaf y.
	lw := leaf width.
	lh := leaf height.
	rx := root x.
	ry := root y.
	rw := root width.
	rh := root height.
	lx < rx
		ifTrue: [ 
			temp := (rx - lx) / rw .
			d := temp ceiling * rw.
			rx := rx - d.
			rw := rw + d ].
	ly < ry
		ifTrue: [ 
			temp := (ry - ly) / rh .
			d := temp ceiling *rh.
			ry := ry - d.
			rh := rh + d ].
	lx + lw < (rx + rw)
		ifTrue: [ 			
			temp := (lx + lw - (rx + rw)) / rw  .
			d := temp ceiling * rw.
			rw := rw + d ].
	ly + lh < (ry + rh)
		ifTrue: [
			temp := (lx + lw - (rx + rw)) / rw.
			 d := temp ceiling * rw .
			rh := rh + d ].
	leafs := OrderedCollection new.
	leafs add: leaf.
	root getLeaf: leafs rect: root.
	root := Node
		x: rx
		y: ry
		size: (rw max: rh)
		depth: 0
		maxLeafs: root maxLeafs
		maxDepth: root maxDepth + 1.
	leafs do: [ :l | root insertLeaf: l ]