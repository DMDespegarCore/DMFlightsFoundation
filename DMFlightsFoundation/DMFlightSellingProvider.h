//
//  DMFlightSellingProvider.h
//  DMFlightsFoundation
//
//  Created by Nicolas Miyasato on 7/23/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMFlightXSellingProtocol.h"

@protocol DMFlightSellingProvider <NSObject>

@property (nonatomic, readonly, assign) id <DMFlightXSellingProtocol> xSelling;

@end
