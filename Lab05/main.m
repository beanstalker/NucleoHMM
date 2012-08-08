//
//  main.m
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"
#import "MatchState.h"
#import "InsertionState.h"
#import "DeletionState.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MatchState *M1 = [[MatchState alloc] initWithProbsA:0.10 C:0.80 G:0.04 T:0.06];
        MatchState *M2 = [[MatchState alloc] initWithProbsA:0.40 C:0.55 G:0.04 T:0.01];
        MatchState *M3 = [[MatchState alloc] initWithProbsA:0.73 C:0.18 G:0.02 T:0.07];
        MatchState *I1 = [[MatchState alloc] initWithProbsA:0.15 C:0.29 G:0.33 T:0.23];
        MatchState *I2 = [[MatchState alloc] initWithProbsA:0.44 C:0.51 G:0.02 T:0.03];
        MatchState *I3 = [[MatchState alloc] initWithProbsA:0.70 C:0.08 G:0.19 T:0.03];
        MatchState *I4 = [[MatchState alloc] initWithProbsA:0.01 C:0.01 G:0.08 T:0.90];
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

