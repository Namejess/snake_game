//
//  Player.h
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

typedef NS_ENUM(NSUInteger, numberOfPlayers) {
	player1 = 1,
	player2 = 2,
	player3 = 3,
	player4 = 4,
};

@property (nonatomic) 	numberOfPlayers 	defaultPlayers;
@property (nonatomic) 	NSString*			name;
@property (nonatomic)	NSArray*			listOfPlayers;
@property (nonatomic)	NSNumber* 			age;

- (BOOL)validateNumberOfPlayers:(NSNumber*)numberPlayer;
- (BOOL)validateAgeOfPlayers:(NSNumber*)playerAge;
- (BOOL)validateNameOfPlayers:(NSString*)playerName;


@end

NS_ASSUME_NONNULL_END
