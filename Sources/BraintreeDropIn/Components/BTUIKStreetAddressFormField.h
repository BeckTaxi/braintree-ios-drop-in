//
//  BTUIKStreetAddressFormField.h
//  DropInDemo
//
//  Created by Nikolaos Papadakis on 2/1/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//
#import <BraintreeDropIn/BTUIKFormField.h>

/// @class Form field to collect the street address
@interface BTUIKStreetAddressFormField : BTUIKFormField

/// The street address
@property (nonatomic, strong) NSString *streetAddress;

@end
