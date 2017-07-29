setup - tear down
setUp
	rect := Rect new.
	node := Node x: 0 y: 0 size: 128 depth: 0 maxLeafs: 2 maxDepth: 2.
	leafA := Leaf rect: (Rect x: 0 y: 10 width:64 height: 54)  data: 'LeafA'. 
	leafB := Leaf rect: (Rect x: 64 y: 10 width:64 height: 54)  data: 'LeafB'. 
