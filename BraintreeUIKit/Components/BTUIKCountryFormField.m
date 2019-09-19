//
//  BTUIKCountryFormField.m
//  BraintreeUIKit
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import "BTUIKCountryFormField.h"
#import "BTUIKTextField.h"
#import "BTUIKInputAccessoryToolbar.h"
#import "ActionSheetPicker.h"

@implementation BTUIKCountryFormField

@synthesize country = _country;

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.formLabel.text =
        self.textField.accessibilityLabel = @"Country";
        self.textField.placeholder = @"Canada";
        self.textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
        self.textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textField.spellCheckingType = UITextSpellCheckingTypeNo;
        self.textField.returnKeyType = UIReturnKeyNext;
        [self resetTextFieldText];
    }
    return self;
}

- (NSString *)country {
    return _country;
}

-(void)setCountry:(NSString *)country {
    _country = country;
    self.textField.text = country;
}

- (void)fieldContentDidChange {
    [self.delegate formFieldDidChange:self];
    [self updateAppearance];
}

- (BOOL)textFieldShouldBeginEditing:(__unused UITextField *)textField {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    self.displayAsValid = YES;
    [self showSmallPicker];
    return NO;
}

#pragma mark - Custom accessors

- (BOOL)valid {
    return self.country.length > 0;
}

-(void)resetTextFieldText {
    self.country =  @"Canada";
}

- (BOOL)entryComplete {
    return [super entryComplete];
}

-(void)showSmallPicker {
    
    NSMutableArray* allCountries = [NSMutableArray arrayWithObjects:@"Canada", @"United States of America", nil];
    
    
    NSLocale *locale = [NSLocale currentLocale];
    NSArray *countryArray = [NSLocale ISOCountryCodes];
    
    NSMutableArray *sortedCountryArray = [[NSMutableArray alloc] init];
    
    for (NSString *countryCode in countryArray) {
        NSString *displayNameString = [locale displayNameForKey:NSLocaleCountryCode value:countryCode];
        [sortedCountryArray addObject:displayNameString];
    }
    
    [sortedCountryArray sortUsingSelector:@selector(localizedCompare:)];
    
    [allCountries addObjectsFromArray:sortedCountryArray];
    NSArray *countries = allCountries;
    
    int index = 0;
    if(self.country != nil) {
        index = (int)[countries indexOfObject:self.country];
    }

    [ActionSheetStringPicker showPickerWithTitle:@"Select a Country"
                                            rows:countries
                                initialSelection:index
                                       doneBlock:^(ActionSheetStringPicker *picker __unused, NSInteger selectedIndex __unused, id selectedValue) {
                                           self.country = selectedValue;
                                           [self fieldContentDidChange];
                                       }
                                     cancelBlock:^(ActionSheetStringPicker *picker) {
                                         NSLog(@"Block Picker Canceled %@", picker);
                                     }
                                          origin:self];
    
}

@end
