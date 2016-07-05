//
//  FISTriviaTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISTrivium.h"
#import "FISLocationsDataStore.h"
#import "FISAddTriviaViewController.h"

@interface FISTriviaTableViewController : UITableViewController
@property (nonatomic, strong) FISLocation *location; 

@end
