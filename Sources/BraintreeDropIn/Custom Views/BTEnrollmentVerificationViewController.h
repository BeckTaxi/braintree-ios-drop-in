#import <UIKit/UIKit.h>
#import <BraintreeDropIn/BTDropInBaseViewController.h>
#import <BraintreeDropIn/BTUIKFormField.h>

@interface BTEnrollmentVerificationViewController : BTDropInBaseViewController <UITextFieldDelegate, BTUIKFormFieldDelegate>
typedef void (^BTEnrollmentHandler)(NSString* authCode, BOOL resendSms);

- (instancetype)initWithPhone:(NSString *)mobilePhoneNumber
            mobileCountryCode:(NSString *)mobileCountryCode
                      handler:(BTEnrollmentHandler)handler;

- (void)smsErrorHidden:(BOOL)hidden;
- (void)confirm;

@end
