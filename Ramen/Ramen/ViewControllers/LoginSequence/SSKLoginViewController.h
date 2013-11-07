//
//  SSKLoginViewController.h
//  Ramen
//
//  Created by Sujay Khandekar on 10/24/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSKAbstractViewController.h"

@interface SSKLoginViewController : SSKAbstractViewController

@property (strong, nonatomic) UITextField *userField;
@property (strong, nonatomic) UITextField *passwordField;

@end
