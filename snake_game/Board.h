//
//  Board.h
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Board : NSObject

@property(nonatomic) int	dice;

- (BOOL)validateCaseBoard:(int)numberCase;
- (int)launchDice;


@end

NS_ASSUME_NONNULL_END
