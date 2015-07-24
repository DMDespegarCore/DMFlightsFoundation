//
//  DMFlightsResultsViewController.m
//  DMFlightsFoundation
//
//  Created by Matias Servetto on 6/28/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMFlightsResultsViewController.h"
#import "DMFlightSellingProvider.h"

@interface DMFlightsResultsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DMFlightsResultsViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:@"check" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (void)configureWithInfo:(NSDictionary *)info
{
    NSLog(@"configureWithInfo -- DMFlightsResultsViewController %@", info);
}

- (IBAction)boughtFlight:(id)sender {
    id<UIApplicationDelegate, DMFlightSellingProvider> myDelegate = (id<UIApplicationDelegate, DMFlightSellingProvider>)[[UIApplication sharedApplication] delegate];
    
    
    if ([myDelegate conformsToProtocol:@protocol(DMFlightSellingProvider)]) {
        NSDictionary *params =  @{
                                  @"to" : @"bahamas",
                                  @"from" : @"arg",
                                  };
        
        // TODO Chequear por protocol de xselling.
        if ([myDelegate.xSelling conformsToProtocol:@protocol(DMFlightXSellingProtocol) ]) {
            [myDelegate.xSelling boughtFlight:params];
        }
    }

}

@end
