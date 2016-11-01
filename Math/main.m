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
            
            NSString *answerInput = [input getInput];
            
            NSString *convertAnswerToString = [NSString stringWithFormat:@"%ld", [question answer]];
            
            if ([answerInput isEqualToString:@"quit"]) {
                gameOn = false;
                break;
            }
            if ([answerInput isEqualToString:convertAnswerToString]) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
        }
    }
    return 0;
}
