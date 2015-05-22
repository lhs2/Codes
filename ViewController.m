#import "AVFoundation/AVFoundation.h"
#import "ViewController.h"

@interface ViewController ()

@end

AVAudioPlayer *music;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [NSString stringWithFormat:@"%@/mySong.mp3",[[NSBundle mainBundle] resourcePath]];
    NSURL *SongPath = [NSURL fileURLWithPath:path];
    
    music = [[AVAudioPlayer alloc] initWithContentsOfURL:SongPath error:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Tocar:(id)sender {
    [music play];
}

@end
