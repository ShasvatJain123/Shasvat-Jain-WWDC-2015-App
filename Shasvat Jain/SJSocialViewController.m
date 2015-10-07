//
//  AJSocialViewController.m
//  AMAN JAIN
//
//  Created by Shasvat Jain on 25/04/15.
//  Copyright (c) 2015 WWDC App. All rights reserved.
//

#import "SJSocialViewController.h"


@interface SJSocialViewController ()

@end

@implementation SJSocialViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//UIViewControllerBasedStatusBarAppearance

-(UIStatusBarStyle)preferredStatusBarStyle

{
    return UIStatusBarStyleLightContent;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)twitterButton:(id)sender {
    
    // open the Twitter App
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@""]]) {
        
        // opening the app didn't work - let's open Safari
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/shasvatjain"]]) {
            
        }
    }
}

- (IBAction)facebookButton:(id)sender {
        
        // open the Twitter App
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@""]]) {
            
            // opening the app didn't work - let's open Safari
            if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/shasvat.jain05"]]) {
                
            }
        }
    }

- (IBAction)EmailButton:(id)sender {
    
            if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto:nayakshasvat@gmail.com"]]) {

        }
    }

- (IBAction)DribbbleButton:(id)sender {
    
    // open the Twitter App
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@""]]) {
        
        // opening the app didn't work - let's open Safari
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://dribbble.com/shasvatjain"]]) {

        }
    }
}



@end
