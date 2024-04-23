Class {
	#name : 'InputPanelPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'redInput',
		'yellowInput',
		'greenInput',
		'readyButton'
	],
	#category : 'TrafficLightsProject',
	#package : 'TrafficLightsProject'
}

{ #category : 'initialization' }
InputPanelPresenter >> defaultLayout [ 

^ SpGridLayout new 
	add: 'Set durations of lights' at: 1@1 span: 2@1;
	add: 'red' at: 1 @ 2;
	add: redInput at: 2 @ 2;
	add: 'yellow' at: 1 @ 3;
	add: yellowInput at: 2 @ 3;
	add: 'green' at: 1 @ 4;
	add: greenInput at: 2 @ 4;
	add: readyButton at: 2 @ 5;
	yourself
]

{ #category : 'initialization' }
InputPanelPresenter >> initializePresenters [ 

redInput := self newNumberInput 
					rangeMinimum: 1 maximum: 10;
					number: 5;
					yourself.
yellowInput:= self newNumberInput
					rangeMinimum: 1 maximum: 10;
					number: 2;
					yourself. 
greenInput := self newNumberInput 
					rangeMinimum: 1 maximum: 10;
					number: 5;
					yourself. 
readyButton := self newButton
					label: 'Ready';
					icon: (self iconNamed: #smallOk);
					yourself  
]

{ #category : 'initialization' }
InputPanelPresenter >> initializeWindow: aWindowPresenter [

aWindowPresenter
	title: 'Set durations of ligths';
	initialExtent: 200 @ 200
]
