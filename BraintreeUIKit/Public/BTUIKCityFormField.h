//
//  BTUIKCityFormField.h
//  BraintreeUIKit
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import "BTUIKFormField.h"

/// @class Form field to collect the city
@interface BTUIKCityFormField : BTUIKFormField

/// The city
@property (nonatomic, strong) NSString *city;

-(void)resetTextFieldText;

@end
