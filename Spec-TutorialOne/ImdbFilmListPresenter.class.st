Class {
	#name : 'ImdbFilmListPresenter',
	#superclass : 'SpPresenter',
	#classTraits : '{} + TraitedClass',
	#instVars : [
		'filmList',
		'detail'
	],
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'layout' }
ImdbFilmListPresenter >> addFilm [

| presenter windowPresenter |
presenter := ImdbFilmPresenter newApplication: self application.
windowPresenter := presenter openModal.
windowPresenter isOk
ifFalse: [ ^ self ].
ImdbFilm
addFilm:
(ImdbFilm new
name: presenter name;
director: presenter director;
year: presenter year).
self updatePresenter
]

{ #category : 'layout' }
ImdbFilmListPresenter >> clickFilmAtIndex: anIndex [

filmList clickAtIndex: anIndex

]

{ #category : 'layout' }
ImdbFilmListPresenter >> connectPresenters [

"filmList whenSelectionChangedDo: [ :selectedItemMode |
selectedItemMode isEmpty
ifFalse: [ detail setModel: selectedItemMode
selectedItem ] ]." 

filmList transmitTo: detail.
]

{ #category : 'layout' }
ImdbFilmListPresenter >> defaultLayout [

^ SpBoxLayout newTopToBottom
	add: filmList;
	add: detail;
	yourself
]

{ #category : 'layout' }
ImdbFilmListPresenter >> detail [

^ detail 

]

{ #category : 'layout' }
ImdbFilmListPresenter >> filmList [ 

^filmList 

]

{ #category : 'layout' }
ImdbFilmListPresenter >> initializePresenters [ 

filmList := self newTable 
	addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
	addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
	addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
	yourself.
	
detail := self instantiate: ImdbFilmPresenter. 
detail editable: false 
]

{ #category : 'layout' }
ImdbFilmListPresenter >> initializeWindow: aWindowPresenter [ 

aWindowPresenter
title: 'Mini IMDB';
initialExtent: 600@400;
toolbar: (self newToolbar
add: (self newToolbarButton
label: 'Add film' ;
icon: (self iconNamed: #smallAdd);
action: [ self addFilm ];
yourself);
yourself)
]

{ #category : 'layout' }
ImdbFilmListPresenter >> listAboveLayout [

^ SpBoxLayout newTopToBottom
add: detail;
add: filmList;
yourself
]

{ #category : 'layout' }
ImdbFilmListPresenter >> updatePresenter [ 

filmList items: ImdbFilm films 
]
