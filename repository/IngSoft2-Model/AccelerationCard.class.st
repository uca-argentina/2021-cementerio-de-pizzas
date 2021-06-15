Class {
	#name : #AccelerationCard,
	#superclass : #Card,
	#instVars : [
		'owner',
		'affectedPlayer',
		'active',
		'instant'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
AccelerationCard class >> of: player on: affectedPlayer [
	^self new initializeWithPlayer: player andAffectedPlayer: affectedPlayer.
]

{ #category : #'as yet unclassified' }
AccelerationCard >> affected [
	^affectedPlayer.
]

{ #category : #'as yet unclassified' }
AccelerationCard >> applyEffectFrom: aDeck [ 
	(active) 
	ifTrue:[aDeck lastCardUsed: self.
		^1.]
	ifFalse:[^0].
]

{ #category : #initialize }
AccelerationCard >> initializeWithPlayer: player andAffectedPlayer: anotherPlayer [
	owner :=player.
	affectedPlayer :=anotherPlayer.
	active := (affectedPlayer isNotEmpty).
	instant:=false.
]

{ #category : #initialize }
AccelerationCard >> instant [
	^instant.
]

{ #category : #initialize }
AccelerationCard >> owner [
	^owner.
]

{ #category : #'as yet unclassified' }
AccelerationCard >> usedOn: player [ 
	^(affectedPlayer includes: player).
]