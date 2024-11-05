//
//  Board.m
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import "Board.h"

@implementation Board

- (BOOL)validateCaseBoard:(int)numberCase {

	if ( numberCase == 50 || numberCase == 100 || numberCase == 200 ) {
		return YES;;
	}

	return NO;
}

- (int)launchDice {

	int diceRoll = arc4random_uniform(5);

	if ( (diceRoll == (1)) | 2 | 3 | 4 ) {
		_dice = diceRoll;
	}

	return _dice;
}

@end
