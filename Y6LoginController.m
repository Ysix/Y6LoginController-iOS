//
//  Y6LoginController.m
//
//
//  Created by Ysix on 05/03/2015.
//  Copyright (c) 2015 Ysix All rights reserved.
//

#import "Y6LoginController.h"

@interface Y6LoginController ()

@end

@implementation Y6LoginController

@synthesize logDelegate;

- (instancetype)initWithLoggedViewController:(UIViewController *)loggedViewController
                         loginViewController:(UIViewController *)loginViewController
                                 andDelegate:(id<Y6LoginControllerDelegate>)theDelegate
{
	if (self = [self init])
	{
		logDelegate = theDelegate;
		loggedVC = loggedViewController;
		loginVC = loginViewController;

		if (logDelegate && [logDelegate respondsToSelector:@selector(userIsLogged)])
		{
			if ([logDelegate userIsLogged])
			{
				[self userDidLogIn];
			}
			else
			{
				[self userDidLogOut];
			}
		}
	}
	return self;
}

- (void)userDidLogIn
{
	[[[[UIApplication sharedApplication] delegate] window] setRootViewController:loggedVC];
}

- (void)userDidLogOut
{
	[[[[UIApplication sharedApplication] delegate] window] setRootViewController:loginVC];
}

@end
