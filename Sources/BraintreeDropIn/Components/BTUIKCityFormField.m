//
//  BTUIKCityFormField.m
//  BraintreeUIKit
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import "BTUIKCityFormField.h"
#import <BraintreeDropIn/BTUIKTextField.h>
#import "BTUIKInputAccessoryToolbar.h"

@implementation BTUIKCityFormField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.labelText =
        self.textField.accessibilityLabel = @"City";
        self.textField.placeholder = @"Toronto";
        self.textField.keyboardType = UIKeyboardTypeDefault;
        self.textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textField.spellCheckingType = UITextSpellCheckingTypeNo;
        self.textField.returnKeyType = UIReturnKeyNext;
        [self resetTextFieldText];
    }
    return self;
}

- (NSString *)city {
    return self.textField.text;
}

-(void)setCity:(NSString *)city {
    self.textField.text = city;
}

- (void)fieldContentDidChange {
    [self.delegate formFieldDidChange:self];
    [self updateAppearance];
}

#pragma mark - Custom accessors

- (BOOL)valid {
    return self.city.length > 0;
}

-(void)resetTextFieldText {
    self.textField.text =  @"Toronto";
}

@end
