baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				package: 'QuadTree-Core';
				package: 'QuadTree-Tests-Core' with: [ spec requires: #('QuadTree-Core') ]	
		].