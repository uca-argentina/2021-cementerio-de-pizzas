Class {
	#name : #NoEffectBox,
	#superclass : #Box,
	#category : #'IngSoft2-Model'
}

{ #category : #'as yet unclassified' }
NoEffectBox >> affect: positions triggeredOn: aPosition with: board [
	board move: aPosition by: 0.
]
