accessing
merge
	Transcript
		show: 'node merge ', (self asString);
		cr.
	leafs := self getLeaf: self data: nil.
	q1 := q2 := q3 := q4 := nil