initialization
initialize
	super initialize.
	wrappedObject := self.
	self image: self defaultImage.
	labelMorph := StringMorph new.
	labelMorph backgroundColor: (Color blue alpha: 0.1).
	self label: (String streamContents: [:s |  self printOn: s]).
	self
		color: Color transparent;
		addMorph: labelMorph;
		addMorph: image;
		layoutPolicy: TableLayout new.
	