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

		// Init list of players
		self.player.listOfPlayers = [[NSMutableArray alloc] init];
	}
	return self;
}

// =================================================================================
// .
//==================================================================================
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	/// Démarrage du setup de jeu
	/// Demande du nombre de joueur
	NSLog(@"Combien de joueurs êtes vous? (entre 2 et 4)");

	int input = [self.player.age intValue];

	scanf("%d", &input);

	self.player.defaultPlayers = input;

	NSLog(@"Vous êtes %d joueurs !", self.player.defaultPlayers);

	int i;

	/// Demande des noms des joueurs
	while ( self.player.defaultPlayers >= 0 ) {

		NSLog(@"Entrez le nom du joueur :");

		size_t size= 100; // Arbitrary number
		char word[size];

		while ( word != EOF ) {

			fgets(word,size,stdin);

			size_t length= strlen(word);
			if (word[length-1] == '\n') {
				word[length-1]= '\0';
			}
		}
		NSString* value = [NSString stringWithUTF8String: word];

		[self.player.listOfPlayers addObject:value];

		NSLog(@"Nom du joueur : %@", value);

		self.player.defaultPlayers --;

	}


	// GAME LOOP


}

- (NSString*)readStandard:(NSString*)inputString {
	NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
	NSData *inputData = [NSData dataWithData:[input readDataToEndOfFile]];
	inputString = [[NSString alloc]
							 initWithData:inputData encoding:NSUTF8StringEncoding];

	return inputString;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
	return YES;
}



@end
