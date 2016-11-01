//
//  main.m
//  Math
//
//  Created by Victor Hong on 01/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = true;
        
        InputHandler *input = [[InputHandler alloc] init];
        
        NSString *inputString = [input getInput];
        
        NSLog(@"%@", inputString);
        
        while (gameOn) {
            
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", [question question]);
            
            char answerInputChars[255];
            printf("Input answer please:");
            fgets(answerInputChars, 255, stdin);
            
            NSString *answerInputString = [NSString stringWithCString:answerInputChars encoding:NSUTF8StringEncoding];
            
            NSString *answerNewString = [answerInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSArray *answerComponents = [answerNewString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            answerComponents = [answerComponents filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"self <> ''"]];
            
            answerNewString = [answerComponents componentsJoinedByString:@""];
            
            NSString *convertAnswerToString = [NSString stringWithFormat:@"%ld", [question answer]];
            
            if ([answerNewString isEqualToString:@"quit"]) {
                gameOn = false;
                break;
            }
            if ([answerNewString isEqualToString:convertAnswerToString]) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
        }
    }
    return 0;
}
