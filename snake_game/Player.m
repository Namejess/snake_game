//
//  Player.m
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import "Player.h"

#pragma mark -- IMPLEMENTATION PLAYER
@implementation Player

// =================================================================================
// .
//==================================================================================
- (instancetype)init
{
	self = [super init];
	if (self) {
		 self.defaultPlayers = 1;
	}
	return self;
}

// =================================================================================
// .
//==================================================================================
- (BOOL)validateNumberOfPlayers:(NSNumber*)numberPlayer {

	if ([numberPlayer isGreaterThanOrEqualTo:@2] && [numberPlayer isLessThanOrEqualTo:@4] ) {
		return YES;
	}

	return NO;
}

// =================================================================================
// .
//==================================================================================
- (BOOL)validateAgeOfPlayers:(NSNumber*)playerAge {

	if ( [playerAge isGreaterThanOrEqualTo:@7] && [playerAge isLessThanOrEqualTo:@77] && playerAge != nil ) {
		return YES;
	}
	return NO;
}

// =================================================================================
// .
//==================================================================================
- (void)setAge:(NSNumber*)playerAge {

	if ( [self validateAgeOfPlayers:playerAge] ) {
		_age = playerAge;
	}
}

// =================================================================================
// .
//==================================================================================
- (BOOL)validateNameOfPlayers:(NSString*)playerName {
	NSString* regex = @"[a-zA-Z][a-zA-Z]*";
	NSPredicate* nameResult = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];

	if ( (playerName != nil) && 
		(playerName.length > 0) &&
		[nameResult evaluateWithObject:playerName] ) {
		return YES;
	}
	return NO;
}

// =================================================================================
// .
//==================================================================================
- (void)setName:(NSString *)name {
	if ( [self validateNameOfPlayers:name] ) {
		_name = name;
	}
}

@end
