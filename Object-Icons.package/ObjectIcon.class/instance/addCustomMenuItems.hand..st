as yet unclassified
addCustomMenuItems: aMenu hand: aHand
	aMenu addLine.
	aMenu add: 'Icon Label...' action: [ 
		| response |
		response := UIManager default
			request: 'New icon label...'
			initialAnswer: aMenu defaultTarget label.
		aMenu defaultTarget label: response ]