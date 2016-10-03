//
//  WeatherAPI.m
//  Thermostat
//
//  Created by Colby Gatte on 10/3/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//
// API Key
// fe17631db345490fbca180807160310
// http://api.worldweatheronline.com/premium/v1/weather.ashx?q=70669&key=fe17631db345490fbca180807160310&type=zipcode&format=json

#import "WeatherAPI.h"

@implementation WeatherAPI

+(float) getWeather:(int) zip {
    
    NSURL *url = [NSURL URLWithString:
                  [NSString stringWithFormat:@"https://api.worldweatheronline.com/premium/v1/weather.ashx?q=%i&key=fe17631db345490fbca180807160310&type=zipcode&format=json",zip]];
    
    NSError *err = nil;
    NSString *rawJson = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&err];
    NSData *returnedData = [rawJson dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *parseError = nil;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:returnedData options:0 error:&parseError];
    
    NSArray *tempArray = [json valueForKeyPath:@"data.current_condition.temp_F"];
    
    NSString *temperature = tempArray[0];
    
    NSLog(@"%@", temperature);
    
    return temperature.floatValue;
    
}

@end
