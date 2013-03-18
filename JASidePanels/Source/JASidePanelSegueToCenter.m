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
    JASidePanelController *sidePC = src.sidePanelController;
    Class navigationController = [UINavigationController class];
    if (![dst isKindOfClass:navigationController] && [sidePC.centerPanel isKindOfClass:navigationController]) {
        UINavigationController *navigationController = (UINavigationController*)sidePC.centerPanel;
        [navigationController pushViewController:dst animated:YES];
        [sidePC showCenterPanelAnimated:YES];
    } else {
        [sidePC setCenterPanel:dst];
    }
}

@end
