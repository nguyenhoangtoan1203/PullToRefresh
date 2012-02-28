//
//  AppController.m
//  PullToRefresh
//
//  Created by Vincent Mac on 2/27/12.
//  Copyright (c) 2012 Simplicity.io. All rights reserved.
//

#import "AppController.h"
#import "PullToRefreshScrollView.h"

@implementation AppController

@synthesize ptrScrollView = _ptrScrollView;

- (void)awakeFromNib {
    NSLog(@"awake from nib");
    [_ptrScrollView setDelegate:self];
}

- (void)ptrScrollViewDidTriggerRefresh:(id)sender {
    NSLog(@"This is called by the PullToRefresh delegate protocol");
}

@end
