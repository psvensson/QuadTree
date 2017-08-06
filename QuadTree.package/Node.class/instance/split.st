accessing
split
	| halfSize newLeafs |
	"Transcript
		show: 'split ' , self asString;
		cr."
	halfSize := width / 2.
	q1 := Node
		x: x
		y: y
		size: halfSize
		depth: depth + 1
		maxLeafs: maxDepth
		maxDepth: maxLeafs.
	q2 := Node
		x: x + halfSize
		y: y
		size: halfSize
		depth: depth + 1
		maxLeafs: maxDepth
		maxDepth: maxLeafs.
	q3 := Node
		x: x
		y: y + halfSize
		size: halfSize
		depth: depth + 1
		maxLeafs: maxDepth
		maxDepth: maxLeafs.
	q4 := Node
		x: x + halfSize
		y: y + halfSize
		size: halfSize
		depth: depth + 1
		maxLeafs: maxDepth
		maxDepth: maxLeafs.
	newLeafs := leafs copy.
	leafs := nil.
	newLeafs do: [ :l | self insertLeaf: l ]