//
//  WeatherAPI.h
//  Thermostat
//
//  Created by Colby Gatte on 10/3/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherAPI : NSObject


+(float) getWeather:(int) zip;

@end
