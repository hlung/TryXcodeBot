//
//  MyObject.m
//  TryXcodeBot
//
//  Created by Hlung on 21/9/15.
//  Copyright © 2015 Oozou. All rights reserved.
//

#import "MyObject.h"
#import <LinqToObjectiveC/NSArray+LinqExtensions.h>

@implementation MyObject

+ (NSInteger)add:(NSInteger)intA with:(NSInteger)intB {
    return intA + intB;
}

+ (NSArray*)sortedArray:(NSArray*)array {
    return [array linq_sort];
}

@end
