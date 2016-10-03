//
//  ViewController.h
//  Thermostat
//
//  Created by Colby Gatte on 10/3/16.
//  Copyright © 2016 Colby Gatte. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 0 = f
    // 1 = c
    //int current;
    UIColor *originalBackgroundColor;
}
@property (nonatomic, weak) IBOutlet UILabel *degreeLabel;
@property (nonatomic, weak) IBOutlet UISegmentedControl *unit;
@property (nonatomic, weak) IBOutlet UISlider *slider;

@property (nonatomic, weak) IBOutlet UITextField *zipcode;
@property (nonatomic, weak) IBOutlet UILabel *tempFromZipcode;

@end

