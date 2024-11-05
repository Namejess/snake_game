//
//  snake_gameTests.m
//  snake_gameTests
//
//  Created by Jessy Drouin on 04/11/2024.
//

//## Jeu du serpent POO
//
//	- Reprendre le principe de base du jeu du Serpent (jeu de plateau) pour le faire en orienté objet.
//	- Vous devez avoir à minima deux classes :
//	- Jeu / Game
//	- Joueur / Player
//	- Chaque classe doit effectuer les opérations qui lui incombe.

//	- Le program.cs ne doit contenir qu'une instanciation de la classe Jeu / Game + Appel d'une méthode Start() (Donc uniquement deux lignes dans le program.cs, ou une pour ceux qui voient comment faire)
//	- Tout doit être fait en orienté objet
//	- Toutes les règles du jeu du serpent procédural doivent être reprises (Si dépasse la case max, retourne à case max / 2, cases pièges / bonus, si un joueur arrive à la case final, il doit être proclamé 	comme vainqueur, les joueurs jouent au tour par tour)

//	- Bonus à implémenter pour bien pratiquer :
//	- Le nombre de case du plateau doit être entré par l'utilisateur soit 50, soit 100, soit 200
//	- Le nombre de joueur est décidé au début de la partie (entre 2 et 4 joueurs)
//	- Case pièges / bonus à adapter en fonction de la taille du plateau

#import <XCTest/XCTest.h>
#import "Board.h"
#import "Player.h"

@interface snake_gameTests : XCTestCase

@end

@implementation snake_gameTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

#pragma mark -- BOARD TEST

/// Validation des cases du jeu
- (void)test_validateCaseBoard_50 {
	Board* board = [[Board alloc] init];

	int result = [board validateCaseBoard:50];

	XCTAssertEqual(result, true);
}

- (void)test_validateCaseBoard_100 {
	Board* board = [[Board alloc] init];

	int result = [board validateCaseBoard:100];

	XCTAssertEqual(result, true);
}

- (void)test_validateCaseBoard_200 {
	Board* board = [[Board alloc] init];

	int result = [board validateCaseBoard:200];

	XCTAssertEqual(result, true);
}

#pragma mark -- PLAYER TEST

- (void)test_validateNumberOfPlayers {
	Player* player = [[Player alloc] init];

	int result = [player validateNumberOfPlayers:@2];

	XCTAssertTrue(result);
}

- (void)test_setPlayerAge {
	Player* player = [[Player alloc] init];

	// False
	NSArray* testCasesFalse = @[@"h", @0, @78, @4.4];

	// True
	NSArray* testCases = @[@7, @18, @77, @44];

	for (NSNumber* testCase in testCases) {
		[player setAge:testCase];

		XCTAssertNotNil(player.age);
		XCTAssertTrue([player.age isKindOfClass:[NSNumber class]]);
		XCTAssertTrue([player validateAgeOfPlayers:testCase]);
	}
}


- (void)test_setPlayerName {
	Player* player = [[Player alloc] init];
	
	// False
	NSArray* testCasesFalse = @[@"h", @"h ", @"1", @""];

	// True
	NSArray* testCases = @[@"Jessy", @"Mike", @"Sydney", @"Eric"];

	for (NSString* testCase in testCases) {
		[player setName:testCase];

		XCTAssertTrue([player validateNameOfPlayers:testCase]);
		XCTAssertNotNil(player.name);
		XCTAssertTrue([player.name isKindOfClass:[NSString class]]);
	}
}

#pragma mark -- GAME TEST

- (void)test_launchDice {
	Board* board = [[Board alloc] init];

	int diceRoll = 5;

	XCTAssertTrue([board launchDice] == 1 || 2 || 3 || 4 );
	XCTAssertTrue(diceRoll == 1 || 2 || 3 || 4 );
}

@end
