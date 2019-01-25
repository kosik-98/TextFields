//
//  ViewController.m
//  TextViewsTest
//
//  Created by Admin on 18.12.18.
//  Copyright © 2018 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (bool) textFieldShouldReturn:(UITextField *)textField
{
    NSUInteger indexOfObject = [self.TextFields indexOfObject:textField];
    
    if(indexOfObject < [self.TextFields count])
    {
        if(indexOfObject != ([self.TextFields count] - 1))
            [[self.TextFields objectAtIndex:(indexOfObject+1)] becomeFirstResponder];
        else
            [[self.TextFields objectAtIndex:indexOfObject] resignFirstResponder];
    }
    
    return YES;
}

-(IBAction)textFieldChanged:(UITextField *)sender
{
    NSUInteger indexOfObject = [self.TextFields indexOfObject:sender];
    
    UILabel* label = [self.Labels objectAtIndex:indexOfObject];
    
    label.text = [sender text];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if([textField isEqual:self.EmailTextField])
    {
        if([self.EmailTextField.text containsString:@"@"] && [string containsString:@"@"])
        {
            return NO;
        }
    }
    return YES;
}


@end
