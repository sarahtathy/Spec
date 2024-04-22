"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestSpecTutorialOne',
	#superclass : 'PackageManifest',
	#category : 'Spec-TutorialOne-Manifest',
	#package : 'Spec-TutorialOne',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestSpecTutorialOne class >> ruleUnclassifiedMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#ImdbConfiguration #customStyleSheet #false)) #'2024-04-21T18:05:34.359+02:00') )
]
