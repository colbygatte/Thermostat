//
//  ViewController.m
//  Thermostat
//
//  Created by Colby Gatte on 10/3/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import "ViewController.h"
#import "Temperature.h"
#import "WeatherAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    originalBackgroundColor = self.view.backgroundColor;
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) updateDegree:(float) update {
    self.degreeLabel.text = [NSString stringWithFormat:@"%.2f°", update];
}


-(IBAction) slider:(UISlider *) slider {
    
    [self updateBackgroundColor];
    if(self.unit.selectedSegmentIndex == 0) {
        [self updateDegree:slider.value];
    } else {
        [self updateDegree:[Temperature convertToC:slider.value]];
    }
    
}

-(IBAction) updateDegreeWithNewUnit {
    
    if(self.unit.selectedSegmentIndex == 0) {
        [self updateDegree:self.slider.value];
        
    } else {
        float newVal = [Temperature convertToC:self.slider.value];
        
        [self updateDegree:newVal];
    }
    
}

-(void) updateBackgroundColor {
    if(self.slider.value >= 90) {
        self.view.backgroundColor = [UIColor redColor];
    } else if(self.slider.value <= 20) {
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor =  originalBackgroundColor;
    }
}

-(IBAction) updateToCurrentWeather {
    
    int zipcode = self.zipcode.text.intValue;
    
    
    float currentTemp = [WeatherAPI getWeather:zipcode];
    self.tempFromZipcode.text = [NSString stringWithFormat:@"%.0f°", currentTemp];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
