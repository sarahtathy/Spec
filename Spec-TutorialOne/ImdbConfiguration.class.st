Class {
	#name : 'ImdbConfiguration',
	#superclass : 'SpMorphicConfiguration',
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'as yet unclassified' }
ImdbConfiguration >> configure: anApplication [ 

super configure: anApplication. 
self addStyleSheetFromString: self customStyleSheet. 
]

{ #category : 'as yet unclassified' }
ImdbConfiguration >> customStyleSheet [

^ ' .application [ .customLabel [ Font { #color: #red } ] ]'
]
