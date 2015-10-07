//
//  ViewController.m
//  Shasvat Jain
//
//  Created by Shasvat Jain on 25/04/15.
//  Copyright (c) 2015 DigitalHole. All rights reserved.
//

#import "ViewController.h"
#import <Shimmer/FBShimmeringView.h>
#import "Shasvat_Jain-Swift.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SpringImageView *Springimage1;


@end

@implementation ViewController
{
    FBShimmeringView *_shimmeringView;
    UILabel *_logoLabel;

}
@synthesize Springimage1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect shimmeringFrame = self.view.bounds;
    shimmeringFrame.origin.y = shimmeringFrame.size.height * 0.68;
    shimmeringFrame.size.height = shimmeringFrame.size.height * 0.32;
    
    _shimmeringView = [[FBShimmeringView alloc] initWithFrame:shimmeringFrame];
    _shimmeringView.shimmering = YES;
    _shimmeringView.shimmeringBeginFadeDuration = 0.3;
    _shimmeringView.shimmeringOpacity = 1.00;
    [self.view addSubview:_shimmeringView];
    
    _logoLabel = [[UILabel alloc] initWithFrame:_shimmeringView.bounds];
    _logoLabel.text = @"< Swipe To Continue";
    _logoLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:30.0];
    _logoLabel.textColor = [UIColor whiteColor];
    _logoLabel.textAlignment = NSTextAlignmentCenter;
    
    _shimmeringView.contentView = _logoLabel;
    
    
    UISwipeGestureRecognizer * recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(myLeftAction:)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    [self.view addGestureRecognizer:recognizer];
    
    //SpringImage Animation.
    Springimage1.animation = @"pop";
    Springimage1.curve = @"spring";
    Springimage1.force = 1.0;
    Springimage1.velocity = 0.7;
    Springimage1.damping = 0.7;
    Springimage1.delay = 0;
    Springimage1.duration = 2.0;
    Springimage1.autostart = true;
    
}

- (void)myLeftAction:(UISwipeGestureRecognizer *)recognizer
{
    [self performSegueWithIdentifier: @"swipe" sender: self];
}


-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
