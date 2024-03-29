Class {
	#name : #Deck,
	#superclass : #Object,
	#instVars : [
		'myCards'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
Deck class >> withCards: aCollectionOfCards [
(aCollectionOfCards size) < 2
		ifTrue: [ Error signal: 'Un deck no puede tener menos de 2 carta.' ].
	^ self new initializeWithCards: aCollectionOfCards
	
]

{ #category : #'as yet unclassified' }
Deck >> drawACard [
	| card |
	myCards isEmpty ifTrue: [ Error signal: 'Ya no hay más cartas a repartir.' ].
	card := myCards first.
	myCards removeFirst.
	^card.
]

{ #category : #initialize }
Deck >> initializeWithCards: aCollectionOfCards [
	myCards:= aCollectionOfCards.

]

{ #category : #initialize }
Deck >> numberOfCards [
	^(myCards size).
]
