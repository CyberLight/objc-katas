//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by cyberlight on 01.09.13.
//  Copyright (c) 2013 cyberlight. All rights reserved.
//

#import "FizzBuzzTests.h"
#import "FizzbuzzProcessor.h"

@implementation FizzBuzzTests{
    FizzBuzzProcessor * fizzBuzzProcessor;
}

- (void)setUp
{
    [super setUp];
    fizzBuzzProcessor = [[FizzBuzzProcessor alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testShouldReturnFizzForNumberDividedByThree
{
    NSString * result = [fizzBuzzProcessor process:6];
    NSLog(@"Result: '%@'", result);
    STAssertEquals(result, @"Fizz", @"Should return Fizz");
}

- (void)testShouldReturnFizzForRangeOfNumbersDevidedByThree
{
    NSArray * numbers = @[@3,@6,@12,@24,@30];
    
    for (int i =0; i < [numbers count]; i++) {
        NSString * result = [fizzBuzzProcessor process:(int)numbers[i]];
        STAssertEquals(result, @"Fizz", @"Should return Fizz");
    }
    
}

@end
