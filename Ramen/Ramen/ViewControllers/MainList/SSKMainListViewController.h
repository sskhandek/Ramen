//
//  SSKMainListViewController.h
//  Ramen
//
//  Created by Sujay Khandekar on 12/4/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSKMainListViewController : UITableViewController
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSMutableArray *mainListItems;
@end
