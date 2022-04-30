initialization
initialize
	| labelWrapper |
	super initialize.
	customActions := Dictionary new.
	image := self defaultImage.
	imageMorph := self image asMorph.
	labelMorph := StringMorph new.
	labelMorph 
		color: Color white.
	labelWrapper := Morph new
		color: (Color gray lighter lighter alpha: 0.5);
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #center;
		wrapCentering: #center;
		layoutInset: 4;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		wantsHaloFromClick: false. 
	labelWrapper addMorph: labelMorph.
	wrappedObject := self.
	labelMorph contents: (String streamContents: [ :s | wrappedObject printOn: s]).
	self
		color: Color transparent;
		addMorph: labelWrapper;
		addMorph: imageMorph;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutPolicy: TableLayout new.
	