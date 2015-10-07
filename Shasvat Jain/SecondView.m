//
//  SecondView.m
//  Shasvat Jain
//  Created by Shasvat Jain on 25/04/15.
//  Copyright (c) 2015 DigitalHole. All rights reserved.
//

#import "SecondView.h"
#import "Shasvat_Jain-Swift.h"

@interface SecondView ()


@property (weak, nonatomic) IBOutlet SpringImageView *SpringView1;

@end
//About Me Description.

static NSString * const sampleDescription1 = @"";

static NSString * const sampleDescription2 = @"I’m Shasvat Jain, 15years old and self taught iOS Developer and Designer. I’m a designer by heart and a developer by mind. I currently live in India. \n\n I’m Cofounder and CEO of DigitalHole Co. which I and my brother have founded on February, 2014. Two years back when I got a MacBook, I felt in love with Xcode and started developing cool iOS apps for kids like me with passion.";

static NSString * const sampleDescription3 = @"I love trying to give power in hand of people through technology. So, when I got enough iOS programming and design experience I taught to create a team with people like me who are passionate and little crazy about programming and design, soon my team turned into a Company named DigitalHole.Co in February,2014. We provide adorable products on both the design and development side.";

static NSString * const sampleDescription4 = @"I’m currently a High School Student at St. Aloysius School. I’m a Chairman of IDA (iOS Developer Association). I’m also a student of MAAC (Maya Academy Of Advanced Cinematic's) where I learn stuff.";

static NSString * const sampleDescription5 = @"My interest is to make adorable design and apps for people. I also love to listen music when stressed, I love to play Xbox games with friend and have fun.";

static NSString * const sampleDescription6 = @"My future is to build a successful iOS app development company that will actually value people over profit and quality over quantity. One of my biggest dream is to meet Jonathan Ive for once :) .";

static NSString * const sampleDescription7 = @"My Inspiration is Sir Jonathan Ive. I think I’m the biggest fan boy of Jonathan Ive. Without him it would not be possible for the world to see such adorable product counting from small Apple mouse to revolutionary iMac. Thank you, Sir Jonathan Ive.";

static NSString * const sampleDescription8 = @"I got first Price on tech fest 2014, organised on my school for my app named Solitary Guide, I also got award on teen designers event, I have also attend many workshops around the country. I'm a leader of IDA(iOS Development Association) in my school.";

@implementation SecondView{
    UIView *rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    rootView = self.navigationController.view;
    
    // Do any additional setup after loading the view.
    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width /2;
    self.profileImageView.layer.borderWidth = 2.0f;
    self.profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.profileImageView.clipsToBounds = YES;
    
    self.SkillsImageView.layer.cornerRadius = self.SkillsImageView.frame.size.width /2;
    self.SkillsImageView.layer.borderWidth = 2.0f;
    self.SkillsImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.SkillsImageView.clipsToBounds = YES;
    
    self.socialImageView.layer.cornerRadius = self.socialImageView.frame.size.width /2;
    self.socialImageView.layer.borderWidth = 2.0f;
    self.socialImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.socialImageView.clipsToBounds = YES;
    
    self.AppImageView.layer.cornerRadius = self.AppImageView.frame.size.width /2;
    self.AppImageView.layer.borderWidth = 2.0f;
    self.AppImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.AppImageView.clipsToBounds = YES;
    
    UISwipeGestureRecognizer * recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(myRightAction:)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:recognizer];
    
}

- (void)myRightAction:(UISwipeGestureRecognizer *)recognizer
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//About Me.

-(IBAction)AboutMe:(id)sender
{
   [self AboutMe];
}

- (void)AboutMe {
    
    EAIntroPage *page1 = [EAIntroPage page];
    page1.title = @"About Me!";
    page1.desc = sampleDescription1;
    page1.bgImage = [UIImage imageNamed:@"bg.png"];
    page1.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"About.png"]];
    
    EAIntroPage *page2 = [EAIntroPage page];
    page2.desc = sampleDescription2;
    page2.bgImage = [UIImage imageNamed:@"bg2.png"];
    page2.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AboutMe1.png"]];
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.desc = sampleDescription3;
    page3.bgImage = [UIImage imageNamed:@"bg3.png"];
    page3.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Company.png"]];
    
    EAIntroPage *page4 = [EAIntroPage page];
    page4.desc = sampleDescription4;
    page4.bgImage = [UIImage imageNamed:@"bg4.png"];
    page4.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Education.png"]];
    
    EAIntroPage *page5 = [EAIntroPage page];
    page5.desc = sampleDescription5;
    page5.bgImage = [UIImage imageNamed:@"bg5.png"];
    page5.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Hobbies.png"]];
    
    EAIntroPage *page6 = [EAIntroPage page];
    page6.desc = sampleDescription6;
    page6.bgImage = [UIImage imageNamed:@"bg.png"];
    page6.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"future.png"]];
    
    EAIntroPage *page7 = [EAIntroPage page];
    page7.desc = sampleDescription7;
    page7.bgImage = [UIImage imageNamed:@"bg2.png"];
    page7.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"inspiration.png"]];
    
    EAIntroPage *page8 = [EAIntroPage page];
    page8.desc = sampleDescription8;
    page8.bgImage = [UIImage imageNamed:@"bg3.png"];
    page8.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"achievements.png"]];
    
    
    EAIntroView *intro = [[EAIntroView alloc] initWithFrame:rootView.bounds andPages:@[page1,page2,page3,page4,page5,page6,page7,page8]];
    [intro setDelegate:self];
    
    [intro showInView:rootView animateDuration:0.3];
}

// My skills.

-(IBAction)Skills:(id)sender
{
    [self Skills];
}

- (void)Skills{

    
    EAIntroPage *page1 = [EAIntroPage page];
    page1.title = @"My Skills!";
   
    page1.bgImage = [UIImage imageNamed:@"bg.png"];
    page1.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Skills.png"]];

    EAIntroPage *page2 = [EAIntroPage page];
    page2.title = @"Xcode";
   
    page2.bgImage = [UIImage imageNamed:@"bg2.png"];
    page2.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Xcode.png"]];
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.title = @"Photoshop";
    page3.bgImage = [UIImage imageNamed:@"bg3.png"];
    page3.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Photoshop.png"]];
    
    EAIntroPage *page4 = [EAIntroPage page];
    page4.title = @"Sketch";
    page4.bgImage = [UIImage imageNamed:@"bg4.png"];
    page4.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Sketch.png"]];
    
    EAIntroPage *page5 = [EAIntroPage page];
    page5.title = @"After Effect";
    page5.bgImage = [UIImage imageNamed:@"bg5.png"];
    page5.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AfterEffect.png"]];
    
    EAIntroPage *page6 = [EAIntroPage page];
    page6.title = @"Illustrator";
    page6.bgImage = [UIImage imageNamed:@"bg.png"];
    page6.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"illustrator.png"]];
    
    EAIntroView *intro = [[EAIntroView alloc] initWithFrame:rootView.bounds andPages:@[page1,page2,page3,page4,page5,page6]];
    [intro setDelegate:self];
    
    [intro showInView:rootView animateDuration:0.3];
    
}

@end
