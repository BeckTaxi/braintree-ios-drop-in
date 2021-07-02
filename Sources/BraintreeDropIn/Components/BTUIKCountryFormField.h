//
//  BTUIKCountryFormField.h
//  BraintreeUIKit
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import <BraintreeDropIn/BTUIKFormField.h>

/// @class Form field to collect the city
@interface BTUIKCountryFormField : BTUIKFormField

/// The city
@property (nonatomic, strong, readonly) NSString *country;

-(void)resetTextFieldText;

@end
