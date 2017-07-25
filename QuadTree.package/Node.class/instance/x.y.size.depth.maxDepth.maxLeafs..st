accessing
x: anX y: anY size: aSize depth: aDepth maxDepth: aMaxDepth maxLeafs: aMaxLeafs
	super
		x: anX;
		y: anY;
		width: aSize;
		height: aSize.
	leafs := Array new: 4.
	size := aSize .
	depth := aDepth .
	maxDepth := aMaxDepth .
	maxLeafs := aMaxDepth .