Class {
	#name : 'ImdbFilm',
	#superclass : 'Object',
	#instVars : [
		'name',
		'year',
		'director'
	],
	#classInstVars : [
		'films'
	],
	#category : 'Spec-TutorialOne',
	#package : 'Spec-TutorialOne'
}

{ #category : 'accessing' }
ImdbFilm class >> addFilm: aFilm [ 

films add: aFilm 
]

{ #category : 'accessing' }
ImdbFilm class >> films [ 
^ films ifNil: [ films := OrderedCollection new ] 
]

{ #category : 'accessing' }
ImdbFilm >> director [ 

^ director 
]

{ #category : 'accessing' }
ImdbFilm >> director: aDirector [ 

director := aDirector 
]

{ #category : 'accessing' }
ImdbFilm >> name [ 

^ name 
]

{ #category : 'accessing' }
ImdbFilm >> name: aName [  

name := aName 
]

{ #category : 'accessing' }
ImdbFilm >> year [ 

^ year  
]

{ #category : 'accessing' }
ImdbFilm >> year: aYear [ 

year := aYear 
]
