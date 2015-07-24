//
//  DMFlightURIsHandler.m
//  DMFlightsFoundation
//
//  Created by Nicolas Miyasato on 7/23/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMFlightURIsHandler.h"

NSString *const DMCrossSellToFlightURI = @"despe://xSelling/flight";

@implementation DMFlightURIsHandler

- (NSArray *)uris {
    // Por ahora 1 solo
    return @[ DMCrossSellToFlightURI ];
    
}

@end
