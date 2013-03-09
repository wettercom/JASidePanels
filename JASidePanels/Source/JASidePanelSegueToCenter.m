//
//  JASidePanelSegueToCenter.m
//  wetter-com-iphone
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 09.03.13.
//  Copyright (c) 2013 grandcentrix GmbH. All rights reserved.
//

#import "JASidePanelSegueToCenter.h"

@implementation JASidePanelSegueToCenter

- (void)perform {
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    [src.sidePanelController setCenterPanel:dst];
}

@end
