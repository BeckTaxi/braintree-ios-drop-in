#import "BTUIKCardholderNameFormField.h"
#import "BTUIKLocalizedString.h"
#import "BTUIKTextField.h"
#import "BTUIKInputAccessoryToolbar.h"

@implementation BTUIKCardholderNameFormField

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.textField.accessibilityLabel = BTUIKLocalizedString(CARDHOLDER_NAME_LABEL);
        self.formLabel.text = BTUIKLocalizedString(CARDHOLDER_NAME_LABEL);
        
        self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
        self.textField.placeholder = @"John Appleseed";
        self.textField.keyboardType = UIKeyboardTypeDefault;
        self.textField.autocapitalizationType = UITextAutocapitalizationTypeWords;
        self.textField.spellCheckingType = UITextSpellCheckingTypeNo;
        self.textField.returnKeyType = UIReturnKeyNext;
    }

    return self;
}

- (NSString *)cardholderName {
    return self.textField.text;
}

-(void)setCardholderName:(NSString *)cardholderName {
    self.textField.text = cardholderName;
}

- (BOOL)valid {
    if (self.isRequired) {
        return [self.cardholderName stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceCharacterSet].length > 0;
    }
    else {
        return YES;
    }
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    return newText.length <= 255;
}

- (void)fieldContentDidChange {
    [self.delegate formFieldDidChange:self];
    [self updateAppearance];
}

@end
