//
//  JASidePanelSegueToCenter.m
//  wetter-com-iphone
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 09.03.13.
//  Copyright (c) 2013 grandcentrix GmbH. All rights reserved.
//

#import "JASidePanelSegueToCenter.h"

@implementation JASidePanelSegueToCenter

#pragma mark -
#pragma mark UIStoryboardSegue methods

- (void)perform {
    UIViewController *src = (UIViewController *) self.sourceViewController;
    
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    
    JASidePanelController *sidePC = src.sidePanelController;
    
    Class navigationController = [UINavigationController class];
    
    if (![dst isKindOfClass:navigationController] &&
        ([sidePC.centerPanel isKindOfClass:navigationController] || [sidePC.centerPanel isKindOfClass:[WETRootViewController class]])) {
        UINavigationController *centerNavigationController;
        
        if ([sidePC.centerPanel isKindOfClass:navigationController]) {
            centerNavigationController = (UINavigationController*)sidePC.centerPanel;
        } else {
            centerNavigationController = ((WETRootViewController*)sidePC.centerPanel).dataViewController;
        }
        
        [centerNavigationController pushViewController:dst animated:YES];
        
        [sidePC showCenterPanelAnimated:YES];
    }
    else {
        [sidePC setCenterPanel:dst];
    }
}

@end
