//
//  SSKListItem.h
//  Ramen
//
//  Created by Sujay Khandekar on 11/6/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSKGroupItem.h"

@interface SSKListItem : NSObject

@property (nonatomic, strong, readonly) NSString *name;
@property (nonatomic, strong, readonly) NSString *description;
@property (nonatomic, strong, readonly) SSKGroupItem *group;


@end
