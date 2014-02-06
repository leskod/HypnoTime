//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Lesko, Dereck on 2/5/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface TimeViewController : NSObject
@interface TimeViewController : UIViewController

{
    __weak IBOutlet UILabel *timeLabel;
}
-(IBAction)showCurrentTime:(id)sender;





@end
