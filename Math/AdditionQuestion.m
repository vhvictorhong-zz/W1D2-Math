//
//  AdditionQuestion.m
//  Math
//
//  Created by Victor Hong on 01/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init {
    if (self = [super init]) {
        NSInteger number1 = arc4random_uniform(100) + 1;
        NSInteger number2 = arc4random_uniform(100) + 1;
        
        NSString *numberString1 = [NSString stringWithFormat:@"%ld", number1];
        NSString *numberString2 = [NSString stringWithFormat:@"%ld", number2];
        
        NSString *questionGenerated = [numberString1 stringByAppendingString:@" + "];
        questionGenerated = [questionGenerated stringByAppendingString:numberString2];
        
        _question = questionGenerated;
        
        _answer = number1 + number2;
        
    }
    return self;
}
@end
