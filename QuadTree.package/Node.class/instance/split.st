accessing
split
	| halfSize newLeafs |
	halfSize := width / 2.
	q1 := Node
		x: x
		y: y
		size: halfSize
		depth: depth + 1
		maxDepth: maxDepth
		maxLeafs: maxLeafs.
	q2 := Node
		x: x + halfSize
		y: y
		size: halfSize
		depth: depth + 1
		maxDepth: maxDepth
		maxLeafs: maxLeafs.
	q3 := Node
		x: x
		y: y + halfSize
		size: halfSize
		depth: depth + 1
		maxDepth: maxDepth
		maxLeafs: maxLeafs.
	q4 := Node
		x: x + halfSize
		y: y + halfSize
		size: halfSize
		depth: depth + 1
		maxDepth: maxDepth
		maxLeafs: maxLeafs.
	newLeafs := leafs copy.
	leafs := nil.
	^ newLeafs