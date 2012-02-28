//
//  AppController.h
//  PullToRefresh
//
//  Created by Vincent Mac on 2/27/12.
//  Copyright (c) 2012 Simplicity.io. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PullToRefreshScrollView;

@interface AppController : NSObject

@property (weak) IBOutlet PullToRefreshScrollView *ptrScrollView;

@end
