//
//  ViewController.h
//  TextViewsTest
//
//  Created by Admin on 18.12.18.
//  Copyright © 2018 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *TextFields;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *Labels;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;

-(IBAction)textFieldChanged:(UITextField*)sender;

@end

