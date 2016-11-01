//
//  InputHandler.m
//  Math
//
//  Created by Victor Hong on 01/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getInput {
    
    char inputChars[255];
    printf("Input a string: ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSString *newString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSArray *components = [newString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    components = [components filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self <> ''"]];
    
    newString = [components componentsJoinedByString:@""];
    
    return newString;
}

@end
