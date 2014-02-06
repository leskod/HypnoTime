//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Lesko, Dereck on 2/5/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
//    self = [super initWithNibName:nil
//                           bundle:nil];
    //get a ointer to the application bundle object
    NSBundle *appBundle = [NSBundle mainBundle];
    //explicitly tell it to use the TimeViewController.xib file, and the appBundle we just created
    self=[super initWithNibName:@"TimeViewController"
                         bundle:appBundle];
    
    
    
    
    if (self)
    {
        //get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        //give it a label
        [tbi setTitle:@"Time"];
        
        //create a UI image from a file
        //this will use time@2x.png on retina
        UIImage *i = [UIImage imageNamed:@"Time.png"];
        
        //put that on the tab bar item
        [tbi setImage:i];
        
        //this won't get called if the view has to be reloaded
        //don't call view in the init methods.  They should go in viewDidLoad
        //[[self view] setBackgroundColor:[UIColor greenColor]];
    }
    return self;
}

-(IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter  *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterMediumStyle];
    
    [timeLabel setText:[formatter stringFromDate:now]];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"TimeViewController loaded its view.");
    [[self view] setBackgroundColor:[UIColor greenColor]];
}

-(void)viewDidUnload
{
    //the simulate memory warning is not causing any of my views to unload
    
    
    [super viewDidUnload];
    NSLog(@"Unloading TimeViewController's subviews");
    //remove this because we set it to __weak
    //timeLabel=nil;
    
    NSLog(@"timeLabel = %@", timeLabel);
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will DISappear");
    [super viewWillDisappear:animated];
}


@end
