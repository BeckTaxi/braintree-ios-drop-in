//
//  BTCreditCardFormDefaults.m
//  BraintreeDropIn
//
//  Created by Nikolaos Papadakis on 2/7/18.
//  Copyright © 2018 Braintree Payments Solution, LLC. All rights reserved.
//

#import <BraintreeDropIn/BTCreditCardFormDefaults.h>

@implementation BTCreditCardFormDefaults

- (id)copyWithZone:(__unused NSZone *)zone {
    BTCreditCardFormDefaults *cardFormDefaults = [BTCreditCardFormDefaults new];
    cardFormDefaults.cardholderName = self.cardholderName;
    cardFormDefaults.streedAddress = self.streedAddress;
    cardFormDefaults.city = self.city;
    cardFormDefaults.postalCode = self.postalCode;
    cardFormDefaults.country = self.country;
    
    return cardFormDefaults;
}

@end
