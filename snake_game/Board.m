//
//  Board.m
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import "Board.h"

@implementation Board

@synthesize boardCases;

// =================================================================================
// .
//==================================================================================
- (BOOL)validateCaseBoard:(int)numberCase {

	if ( numberCase == 50 || numberCase == 100 || numberCase == 200 ) {
		return YES;;
	}

	return NO;
}

// =================================================================================
// .
//==================================================================================
- (int)launchDice {

	int diceRoll = arc4random_uniform(5);

	if ( (diceRoll == (1)) | 2 | 3 | 4 ) {
		_dice = diceRoll;
	}

	return _dice;
}

// =================================================================================
// .
//==================================================================================
- (void)initBoardCases {
	if ( self.boardCases == nil ) {
		self.boardCases = @{};
	}

	self.boardCases = @
	{
		@1:@"Start",
		@20:@"Echelle 1",
		@30:@"Echelle 2",
		@50:@"Arrivée",
		@100:@"Arrivée",
		@200:@"Arrivée",
	};
}

@end
