Class {
	#name : 'FilmListPresenterTest',
	#superclass : 'TestCase',
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'running' }
FilmListPresenterTest >> setUp [

	super setUp.
	ImdbFilm reset.
	ImdbFilm addET 

	"Put here a common initialization logic for tests"
]

{ #category : 'tests' }
FilmListPresenterTest >> tearDown [

|presenter| 

presenter := ImdbFilmListPresenter new.
presenter delete.
super tearDown
]

{ #category : 'tests' }
FilmListPresenterTest >> testListIsSimpleSelection [

|presenter| 
presenter := ImdbFilmListPresenter new.
presenter open.
self deny: presenter filmList isMultipleSelection
]

{ #category : 'tests' }
FilmListPresenterTest >> testWhenSelectingOneFilmAndClickingOnEmpty [
| name presenter|
"Prepare"
presenter := ImdbFilmListPresenter new.
presenter open.
"Act"
presenter clickFilmAtIndex: 1.
"Assert"
name := presenter detail name.
self deny: name isEmpty.
self assert: presenter filmList listSize equals: 1.
presenter clickFilmAtIndex: 2.
self assert: presenter detail name equals: name
]

{ #category : 'tests' }
FilmListPresenterTest >> testWhenSelectingOneFilmThenDetailIsUpdated [

| presenter detail |
"Prepare the context"
presenter := ImdbFilmListPresenter new.
presenter open.
detail := presenter detail.
self assert: detail name isEmpty.

"Act"
presenter clickFilmAtIndex: 1.

"Assert"
self deny: detail name isEmpty.
presenter delete
]
