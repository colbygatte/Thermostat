//
//  Temperature.m
//  Thermostat
//
//  Created by Colby Gatte on 10/3/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "Temperature.h"

@implementation Temperature

+(float) convertToC:(float) c {
    float calc = (c - 32) * 5 / 9;
    return calc;
}

@end
