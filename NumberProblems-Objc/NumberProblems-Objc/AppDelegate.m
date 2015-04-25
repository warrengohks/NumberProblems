//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

static int multiple = 8;
static int divisor = 6;

@interface AppDelegate ()

@end

@implementation AppDelegate




- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self iterateCount: 4];
    [self multiplied:5];
    
    return YES;
}

- (void)iterateCount:(float)number{
    

    //Method should call itself and decrement the integer until the value is 0
    
    //In the iterateCount method call multiplied and store the return value in a new variable.
    
    float newInt = [self multiplied:number];
    NSLog (@"Multiplied %f by %d to be %f", number, multiple, newInt);
    
    float newIntDivide = [self divided:newInt];
    NSLog (@"divided %f by %d to be %f", number, divisor, newIntDivide);
    
    
    if (number == 0){
        return;
    }
    else{
        NSLog(@"iterate %f", number);
        number --;
        [self iterateCount:number];
    }
}

- (float)multiplied:(float)number{
    return number * multiple;
}

- (float)divided: (float)number{
    return number / divisor;
}


@end
