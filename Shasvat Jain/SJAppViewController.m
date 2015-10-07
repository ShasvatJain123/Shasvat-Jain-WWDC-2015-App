//
//  AJSocialViewController.m
//  AMAN JAIN
//
//  Created by Shasvat Jain on 25/04/15.
//  Copyright (c) 2015 WWDC App. All rights reserved.
//

#import "SJAppViewController.h"


@interface SJAppViewController ()

@end

@implementation SJAppViewController


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

- (IBAction)SolitaryGuide:(id)sender {
    
   // opening the app in Safari
        if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/solitary-guide/id917701061?mt=8"]]) {
            
        }
    
}
- (IBAction)iDevicesNews:(id)sender {
    
    // opening the app in Safari
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/idevices-news/id944192633?mt=8"]]) {
        
    }
    
}
- (IBAction)SMBCInsight:(id)sender {
    
    // opening the app in Safari
    if (![[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/smbc-insight/id889634216?mt=8"]]) {
        
    }
    
}



@end
