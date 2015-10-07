//
//  SecondView.h
//  Shasvat Jain
//
//  Created by Shasvat Jain on 25/04/15.
//  Copyright (c) 2015 DigitalHole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EAIntroView/EAIntroView.h>

@interface SecondView : UIViewController <EAIntroDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UIImageView *socialImageView;
@property (weak, nonatomic) IBOutlet UIImageView *SkillsImageView;
@property (weak, nonatomic) IBOutlet UIImageView *AppImageView;


@end
