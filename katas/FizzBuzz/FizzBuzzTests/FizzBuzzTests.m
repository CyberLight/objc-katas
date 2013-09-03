//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by cyberlight on 01.09.13.
//  Copyright (c) 2013 cyberlight. All rights reserved.
//

#import "FizzBuzzTests.h"
#import "FizzbuzzProcessor.h"

const NSString * FIZZ = @"Fizz";
const NSString * BUZZ = @"Buzz";

@implementation FizzBuzzTests{
    FizzBuzzProcessor * fizzBuzzProcessor;
}

- (void)setUp
{
    [super setUp];
    fizzBuzzProcessor = [[FizzBuzzProcessor alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testShouldReturnFizzForNumberDividedByThree
{
    NSString * result = [fizzBuzzProcessor process:6];
    STAssertEquals(result, FIZZ,  [self shouldReturn:FIZZ]);
}

- (void)testShouldReturnFizzForRangeOfNumbersDevidedByThree
{
    NSArray * numbers = @[@3,@6,@12,@24,@30];
   [self checkForAllIn:numbers shouldReturn:FIZZ];
}

- (void)testShouldReturnBuzzForNumberDividedByFive
{
    NSString * result = [fizzBuzzProcessor process:5];
    STAssertEquals(result, BUZZ, [self shouldReturn:BUZZ]);
}

- (void)testShouldReturnBuzzForRangeOfNumbersDividedByFive
{
    NSArray * numbers = @[@5,@10,@20,@25,@40];
    [self checkForAllIn:numbers shouldReturn:BUZZ];
}

- (void)testShouldReturnNumberForNumbersNotDivisibleBy3and5
{
    NSString * result = [fizzBuzzProcessor process:2];
    STAssertEqualObjects(result, @"2", [self shouldReturn:@"2"]);
}

- (void) checkForAllIn:(NSArray *)numbers
  shouldReturn:(const NSString *) expected{
   for (int i =0; i < [numbers count]; i++) {
       NSString * result = [fizzBuzzProcessor process:(int)numbers[i]];
       STAssertEquals(result, expected, [self shouldReturn:expected]);
   }
}

- (NSString *) shouldReturn: (const NSString *) value
{
    return [NSString stringWithFormat:@"Should return %@", value];
}

@end
