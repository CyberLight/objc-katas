//
//  FizzBuzzProcessor.m
//  FizzBuzz
//
//  Created by cyberlight on 01.09.13.
//  Copyright (c) 2013 cyberlight. All rights reserved.
//

#import "FizzBuzzProcessor.h"

@implementation FizzBuzzProcessor

- (NSString *) process: (int) number{
    return number % 3 == 0 ? @"Fizz" : (number % 5 == 0 ? @"Buzz" : [NSString stringWithFormat:@"%d", number]);
}



@end
