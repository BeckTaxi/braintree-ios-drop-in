#import "BTUIKFormField.h"

@interface BTUIKCardholderNameFormField : BTUIKFormField

/// The cardholder name
@property (nonatomic, strong, readwrite) NSString *cardholderName;

/// Is cardholder name input required
@property (nonatomic, assign) BOOL isRequired;

@end
