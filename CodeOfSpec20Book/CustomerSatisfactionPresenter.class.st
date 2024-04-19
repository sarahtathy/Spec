Class {
	#name : 'CustomerSatisfactionPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'buttonHappy',
		'buttonNeutral',
		'buttonBad',
		'screen'
	],
	#category : 'CodeOfSpec20Book',
	#package : 'CodeOfSpec20Book'
}

{ #category : 'initialization' }
CustomerSatisfactionPresenter >> connectPresenters [ 

buttonHappy action: [ screen label: buttonHappy label ].
buttonNeutral action: [ screen label: buttonNeutral label ].
buttonBad action: [ screen label: buttonBad label ].
]

{ #category : 'initialization' }
CustomerSatisfactionPresenter >> defaultLayout [

^ SpBoxLayout newVertical
add: (SpBoxLayout newLeftToRight
add: buttonHappy;
add: buttonNeutral;
add: buttonBad;
yourself);
add: #screen;
yourself
]

{ #category : 'initialization' }
CustomerSatisfactionPresenter >> initializePresenters [ 

"screen := self newLabel. 
buttonHappy := self newButton. 
buttonNeutral := self newButton.
buttonBad := self newButton. " 

screen := self instantiate: SpLabelPresenter. 
buttonHappy := self instantiate: SpButtonPresenter. 
buttonNeutral := self instantiate: SpButtonPresenter.
buttonBad := self instantiate: SpButtonPresenter.

screen label: 'Please give us your feedback.'.
buttonHappy
label: 'Happy';
icon: (self iconNamed: #thumbsUp).
buttonNeutral
label: 'Neutral';
icon: (self iconNamed: #user).
buttonBad
label: 'Bad';
icon: (self iconNamed: #thumbsDown). 
]

{ #category : 'initialization' }
CustomerSatisfactionPresenter >> initializeWindow: aWindowPresenter [
aWindowPresenter title: 'Customer Satisfaction Survey'; 
initialExtent: 400@100
]
