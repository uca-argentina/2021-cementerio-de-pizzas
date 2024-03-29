Class {
	#name : #OverloadCard,
	#superclass : #Card,
	#instVars : [
		'affectedPlayer',
		'active'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
OverloadCard class >> of: player on: anotherPlayer [
	^self new initializeWithPlayer: player andAffectedPlayer: anotherPlayer.
]

{ #category : #'as yet unclassified' }
OverloadCard >> active [
	^active
]

{ #category : #'as yet unclassified' }
OverloadCard >> applyEffectFrom: aDeck [ 
	(active) 
	ifTrue:[aDeck lastCardUsed: self.
		^-2.]
	ifFalse:[^0].
]

{ #category : #initialize }
OverloadCard >> initializeWithPlayer: player andAffectedPlayer: anotherPlayer [
	owner :=player.
	affectedPlayer :=anotherPlayer.
	active := (affectedPlayer isNotEmpty).
	instant:= false.
]

{ #category : #'as yet unclassified' }
OverloadCard >> isAnEmptyObject [
	^false.
]

{ #category : #'as yet unclassified' }
OverloadCard >> usedOn: player [
	^(player = affectedPlayer)
]
