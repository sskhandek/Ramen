//
//  SSKTabBarViewController.m
//  Ramen
//
//  Created by Sujay Khandekar on 12/4/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import "SSKTabBarViewController.h"
#import "SSKNavigationViewController.h"

@interface SSKTabBarViewController ()

@end

@implementation SSKTabBarViewController
@synthesize username;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [(SSKNavigationViewController *)[[self viewControllers] objectAtIndex:0] setUsername:username];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
