as yet unclassified
all64SelectionWindow
	| container icons scrollPane |
	container := Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 10.
	
	scrollPane := ScrollPane new.
	scrollPane scroller layoutPolicy: TableLayout new.
	scrollPane scroller addMorph: container.

	self iconNames64 do: [ :iconName |
		| icon |
		icon := ObjectIcon new.
		icon image: (self getFormFor: iconName inSize: 64).
		icon label: iconName.
		container addMorphBack: icon ].

	^ scrollPane openInWindowLabeled: 'Icons'.