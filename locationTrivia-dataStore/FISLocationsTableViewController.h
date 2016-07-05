//
//  FISLocationsTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocationsDataStore.h"
#import "FISTriviaTableViewController.h"
#import "FISAddLocationViewController.h"

@interface FISLocationsTableViewController : UITableViewController
@property (nonatomic, strong) FISLocationsDataStore* store; 

@end
