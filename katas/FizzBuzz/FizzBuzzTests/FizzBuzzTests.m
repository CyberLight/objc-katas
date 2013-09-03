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
    STAssertEquals(result, @"Fizz", @"Should return 'Fizz'");
}

- (void)testShouldReturnFizzForRangeOfNumbersDevidedByThree
{
    NSArray * numbers = @[@3,@6,@12,@24,@30];
   [self checkForAllIn:numbers shouldReturn:@"Fizz"];
}

- (void)testShouldReturnBuzzForNumberDividedByFive
{
    NSString * result = [fizzBuzzProcessor process:5];
    STAssertEquals(result, @"Buzz", @"Should return 'Buzz'");
}

- (void)testShouldReturnBuzzForRangeOfNumbersDividedByFive
{
    NSArray * numbers = @[@5,@10,@20,@25,@40];
    [self checkForAllIn:numbers shouldReturn:@"Buzz"];
}

- (void)testShouldReturnNumberForNumbersNotDivisibleBy3and5
{
    NSString * result = [fizzBuzzProcessor process:2];
    STAssertEqualObjects(result, @"2", @"Should return 2");
}

- (void) checkForAllIn:(NSArray *)numbers
  shouldReturn:(NSString *) expected{
   for (int i =0; i < [numbers count]; i++) {
       NSString * result = [fizzBuzzProcessor process:(int)numbers[i]];
       STAssertEquals(result, expected, [NSString stringWithFormat:@"Should return %@", expected]);
   }
}

@end
