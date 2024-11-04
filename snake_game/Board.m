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

@end
