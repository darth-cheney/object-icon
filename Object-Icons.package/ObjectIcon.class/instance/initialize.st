initialization
initialize
	super initialize.
	wrappedObject := self.
	self image: self defaultImage.
	labelMorph := StringMorph new.
	self label: (String streamContents: [:s |  self printOn: s]).
	self
		color: Color transparent;
		addMorph: labelMorph;
		addMorph: image;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new.
	