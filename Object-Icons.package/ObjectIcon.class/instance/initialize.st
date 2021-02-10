initialization
initialize
	super initialize.
	customActions := Dictionary new.
	image := self defaultImage.
	imageMorph := self image asMorph.
	labelMorph := StringMorph new.
	labelMorph 
		color: Color white.
	wrappedObject := self.
	labelMorph contents: (String streamContents: [ :s | wrappedObject printOn: s]).
	self
		color: Color transparent;
		addMorph: labelMorph;
		addMorph: imageMorph;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new.
	