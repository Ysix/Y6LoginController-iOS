//
//  Y6LoginController.h
//
//  Created by Ysix on 05/03/2015.
//  Copyright (c) 2015 Ysix All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Y6LoginControllerDelegate <NSObject>

- (BOOL)userIsLogged;

@end

@interface Y6LoginController : NSObject
{
	UIViewController *loggedVC;
	UIViewController *loginVC;
}

@property (nonatomic, weak) id<Y6LoginControllerDelegate> logDelegate;

- (instancetype)initWithLoggedViewController:(UIViewController *)loggedViewController loginViewController:(UIViewController *)loginViewController andDelegate:(id<Y6LoginControllerDelegate>)delegate;
- (void)userDidLogIn;
- (void)userDidLogOut;


@end
