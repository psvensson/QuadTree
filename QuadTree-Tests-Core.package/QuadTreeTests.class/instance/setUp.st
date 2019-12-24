setup - tear down
setUp
	super setUp .
	rect := Rect new.
	"x, y, size, depth, maxDepth, maxLeafs"
	"0, 0, 128, 0, 2, 2"
	node := Node
		x: 0
		y: 0
		size: 128
		depth: 0
		maxLeafs: 2
		maxDepth: 2.
	leafA := Leaf
		rect:
			(Rect
				x: 0
				y: 10
				width: 64
				height: 54)
		data: 'LeafA'.
	leafB := Leaf
		rect:
			(Rect
				x: 64
				y: 10
				width: 64
				height: 54)
		data: 'LeafB'.
	rectA := Rect
		x: 0
		y: 0
		width: 128
		height: 128.
	rectB := Rect
		x: -128
		y: -128
		width: 128
		height: 128.
	quadTree := QuadTree
		size: 128
		maxLeafs: 4
		maxDepth: 16
		x: 0
		y: 0