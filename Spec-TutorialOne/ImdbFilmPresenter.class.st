Class {
	#name : 'ImdbFilmPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'nameText',
		'directorText',
		'yearNumber'
	],
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'layout' }
ImdbFilmPresenter >> defaultInputPort [

^ self inputModelPort
]

{ #category : 'layout' }
ImdbFilmPresenter >> defaultLayout [ 

"^ SpGridLayout new
add: 'Name' at: 1@1; add: nameText at: 2@1;
add: 'Director' at: 1@2; add: directorText at: 2@2;
add: 'Year' at: 1@3; add: yearNumber at: 2@3;
yourself
^ SpGridLayout build: [ :builder |
builder
add: 'Name'; add: nameText; nextRow;
add: 'Director'; add: directorText; nextRow;
add: 'Year'; add: yearNumber ]
"

^ SpGridLayout build: [ :builder |
builder
beColumnNotHomogeneous;
column: 2 expand: true;
add: 'Name'; add: nameText; nextRow;
add: 'Director'; add: directorText; nextRow;
add: 'Year'; add: yearNumber ]

]

{ #category : 'layout' }
ImdbFilmPresenter >> director [ 

^ directorText text 
]

{ #category : 'layout' }
ImdbFilmPresenter >> editable: aBoolean [
nameText editable: aBoolean.
directorText editable: aBoolean.
yearNumber editable: aBoolean
]

{ #category : 'layout' }
ImdbFilmPresenter >> initializeDialogWindow: aDialogPresenter [
aDialogPresenter centered.
aDialogPresenter
addButton: 'Cancel' do: [ :presenter | presenter close ];
addButton: 'Save Film' do: [ :presenter | presenter beOk;
close ].
]

{ #category : 'layout' }
ImdbFilmPresenter >> initializePresenters [

nameText := self newTextInput.
directorText := self newTextInput.
yearNumber := self newNumberInput
				rangeMinimum: 1900 maximum: Year current year;
				yourself.
]

{ #category : 'layout' }
ImdbFilmPresenter >> initializeWindow: aWindowPresenter [ 

aWindowPresenter 
	title: 'Film';
	initialExtent: 400@250 
]

{ #category : 'layout' }
ImdbFilmPresenter >> inputModelPort [

^ SpModelPort newPresenter: self
]

{ #category : 'layout' }
ImdbFilmPresenter >> name [ 

^nameText text 
]

{ #category : 'layout' }
ImdbFilmPresenter >> setModel: aFilm [

nameText text: aFilm name.
directorText text: aFilm director.
yearNumber number: aFilm year.
]

{ #category : 'layout' }
ImdbFilmPresenter >> year [ 

^yearNumber text 
]
