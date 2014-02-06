//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Lesko, Dereck on 2/5/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"


@implementation HypnosisViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nil
                           bundle:nil];
    if (self)
    {
        //get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        //give it a label
        [tbi setTitle:@"Hypnosis"];
        
        //create a UI image from a file
        //this will use hypno@2x.png on retina
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        //put that on the tab bar item
        [tbi setImage:i];
    }
    return self;
}

-(void)loadView
{
    //create the view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    //set it as the view of this view controller
    [self setView:v];
    
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view.");
}



@end
