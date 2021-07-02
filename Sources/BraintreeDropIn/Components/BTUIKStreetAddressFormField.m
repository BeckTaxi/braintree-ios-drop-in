//
//  BTUIKStreetAddressFormField.m
//  BraintreeUIKit
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import "BTUIKStreetAddressFormField.h"
#import <BraintreeDropIn/BTUIKTextField.h>
#import "BTUIKInputAccessoryToolbar.h"

@implementation BTUIKStreetAddressFormField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.labelText =
        self.textField.accessibilityLabel = @"Street Address";
        self.textField.placeholder = @"100 Queen St W";
        self.textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
        self.textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textField.spellCheckingType = UITextSpellCheckingTypeNo;
        self.textField.returnKeyType = UIReturnKeyNext;
    }
    return self;
}

- (NSString *)streetAddress {
    return self.textField.text;
}

-(void)setStreetAddress:(NSString *)streetAddress {
    self.textField.text = streetAddress;
}

- (void)fieldContentDidChange {
    [self.delegate formFieldDidChange:self];
    [self updateAppearance];
}

#pragma mark - Custom accessors

- (BOOL)valid {
    return self.streetAddress.length > 0;
}

@end



