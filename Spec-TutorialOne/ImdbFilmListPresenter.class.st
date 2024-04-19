Class {
	#name : 'ImdbFilmListPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'filmList'
	],
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'layout' }
ImdbFilmListPresenter >> defaultLayout [

^ SpBoxLayout newTopToBottom
	add: filmList;
	yourself
]

{ #category : 'layout' }
ImdbFilmListPresenter >> initializePresenters [ 

filmList := self newTable 
	addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
	addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
	addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
	yourself 
]

{ #category : 'layout' }
ImdbFilmListPresenter >> updatePresenter [ 

filmList items: ImdbFilm films 
]
