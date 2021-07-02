//
//  BTCreditCardFormDefaults.h
//  BraintreeDropIn
//
//  Created by Nikolaos Papadakis on 2/7/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BTCreditCardFormDefaults : NSObject <NSCopying>

/// Optional: Default cardholderName
@property (nonatomic, copy, nullable) NSString *cardholderName;

/// Optional: Default streetAddress
@property (nonatomic, copy, nullable) NSString *streedAddress;

/// Optional: Default city
@property (nonatomic, copy, nullable) NSString *city;

/// Optional: Default postalCode
@property (nonatomic, copy, nullable) NSString *postalCode;

/// Optional: Default country
@property (nonatomic, copy, nullable) NSString *country;

@end

NS_ASSUME_NONNULL_END
