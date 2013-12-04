//
//  SSKNavigationViewController.m
//  Ramen
//
//  Created by Sujay Khandekar on 12/4/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import "SSKNavigationViewController.h"
#import "SSKQuickListViewController.h"

@interface SSKNavigationViewController ()

@end

@implementation SSKNavigationViewController

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
    [(SSKQuickListViewController *)[[self viewControllers] objectAtIndex:0] setUsername:_username];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
