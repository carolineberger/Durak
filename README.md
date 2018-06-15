# Durak

Implementation of a card game for University of Bologna, Mobile Applications Laboratory.

Caroline Berger
Mobile Applications Laboratory
University of Bologna

I. INTRODUCTION
Durak, or Fool in English, is a popular card game in Russia and other post-soviet countries. The objective of the game is to finish with zero remaining cards in one’s personal hand. The one who has cards in their deck is the Durak, or the Fool. The game begins with each player being dealt 5 cards. Another card is revealed on the board for all players to see, this card is the trump suit. In my implementation of Durak, there are two players, the human player and the computer player. Durak is comprised of smaller bouts in which one player attacks, and the other defends. 

The attacker places a card on the board, the defender can either take the card or play a card from their hand from the same suit as the attacker card that is higher in rank (trump suit beats all other cards and then when a trump is compared within the trump card’s suit 2 to Ace).  If the defender takes the card, the attacker continues to put down their cards. The attacker and defender must both maintain a minimum of 5 cards in their hand. If the defender beats the attacker, the roles swap, and the defender becomes the attacker. The bouts continue until the deck is finished, and the player to finish without cards in their hand wins, the other is the fool. 

II. IMPLEMENTATION
The fundamental architecture of the application is based on the Model-View Controller design pattern (MVC). The Game class acts as the Model, the View Controller class as the Controller and the UIView class as the View. 

III. TECHNICAL REQUIREMENTS
Durak was developed in XCode version 9.2 with Swift 4 programming language. The target testing environment is iOS 11.2 running on an iPhone 8 plus. 

IX. FUNCATIONALITY
Currently, the application exhibits some but not all aspects of functionality. 

A.	The user can start the game.
B.	The user can draw a card. 

Although the functionality is limited, the design of the existing code lends well to extensibility. 

X. CHALLENGES
The challenges I encountered during this project were implementing a datatype for a Move, validating if a move is legal, and alternating between the user and the computer player. 

Originally, I did not create a class to store information about a Player’s move, instead I passed specific attributes about the player and the card when checking with the Game model if a move is legal. 

While I was creating the UML class diagram, I realized that creating a Move class and a MoveType enumeration improved the encapsulation of the action of a player making a move and checking if the move is legal. 

The final problem I encountered of alternation between the user and the player, I was not able to solve with the time permitted. That being said, I have researched into potential solutions which include the use of State Machine design pattern and the Command Design Pattern. 

XI. CONCLUSIONS
I hope to finish programming this project in the near future. Although the majority of the game and application logic is implemented, with more time, I would complete the functionality so the user is able to play in full the card game. 



## License

This project is licensed under the MIT License.

