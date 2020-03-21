as yet unclassified
makeActiveImageFor: anImageMorph
	"Make the 'active' version of the icon's image,
	for a given ImageMorph.
	The default implementation here is to have a 
	grayscale version. Subclasses should override
	for different behavior."
	activeImage := anImageMorph form asGrayScaleWithAlpha asMorph.