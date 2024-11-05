//
//  AppDelegate.m
//  snake_game
//
//  Created by Jessy Drouin on 04/11/2024.
//

#import "AppDelegate.h"
#import "Board.h"
#import "Player.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (strong) Player*	player;
@property (strong) Board*	board;
@property (strong) NSScanner*	kScanner;

@end

@implementation AppDelegate
@synthesize player, board, kScanner;

// =================================================================================
// .
//==================================================================================
- (instancetype)init
{
	self = [super init];
	if (self) {
		self.player = [[Player alloc] init];
		self.board = [[Board alloc] init];;
		NSString* inputPlayer;
		self.kScanner = [NSScanner scannerWithString:inputPlayer];
	}
	return self;
}

// =================================================================================
// .
//==================================================================================
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	NSLog(@"Combien de joueurs êtes vous? (entre 2 et 4)");

	int input = [self.player.age intValue];;

	scanf("%d", &input);

	self.player.age = [NSNumber numberWithInt:input];

	NSLog(@"L'age est : %@", self.player.age);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
	return YES;
}



@end
