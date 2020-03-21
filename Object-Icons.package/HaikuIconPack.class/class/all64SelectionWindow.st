as yet unclassified
all64SelectionWindow
	| container icons scrollPane |
	icons := self iconNames64 collect: [ :iconName |
		| image |
		image := self getImageFor: iconName inSize: 64.
		(ObjectIcon new 
			label: iconName;
			image: image;
			yourself) ].
	container := ScrollPane new.
	container
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		layoutInset: 10.
	icons do: [ :icon |
		container scroller addMorphBack: icon ].
	container addMorph: container.
	
	container openInWindowLabeled: 'All 64 Icons'.