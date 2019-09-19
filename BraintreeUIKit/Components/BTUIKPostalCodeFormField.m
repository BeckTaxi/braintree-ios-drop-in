#import "BTUIKPostalCodeFormField.h"
#import "BTUIKUtil.h"
#import "BTUIKTextField.h"
#import "BTUIKLocalizedString.h"
#import "BTUIKInputAccessoryToolbar.h"
#import "BTUIKAppearance.h"

@implementation BTUIKPostalCodeFormField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.textField.accessibilityLabel = BTUIKLocalizedString(POSTAL_CODE_PLACEHOLDER);
        self.formLabel.text = BTUIKLocalizedString(POSTAL_CODE_PLACEHOLDER);
        self.textField.placeholder = @"M5H2N2";
        self.textField.keyboardType = [BTUIKAppearance sharedInstance].postalCodeFormFieldKeyboardType;

        self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textField.autocapitalizationType = UITextAutocapitalizationTypeAllCharacters;
        self.textField.returnKeyType = UIReturnKeyDone;
    }
    return self;
}

- (NSString *)postalCode {
    return self.textField.text;
}

-(void)setPostalCode:(NSString *)postalCode {
    self.textField.text = postalCode;
}

- (BOOL)entryComplete {
    // Never allow auto-advancing out of postal code field since there is no way to know that the
    // input value constitutes a complete postal code.
    return NO;
}

- (BOOL)valid {
    [self removeSpaces];
    return self.postalCode.length > 0;
}

- (void)fieldContentDidChange {
    [self.delegate formFieldDidChange:self];
    [self updateAppearance];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    self.displayAsValid = YES;
    [super textFieldDidBeginEditing:textField];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self removeSpaces];
    
    self.displayAsValid = YES;
    [super textFieldDidEndEditing:textField];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(void)removeSpaces {
    NSArray* words = [self.postalCode componentsSeparatedByCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString* nospacestring = [words componentsJoinedByString:@""];
    self.postalCode = nospacestring;
}

@end
