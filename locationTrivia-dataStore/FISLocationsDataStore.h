//
//  FISLocationsDataStore.h
//  
//
//  Created by Flatiron School on 7/1/16.
//
//

#import <Foundation/Foundation.h>
#import "FISLocation.h"
#import "FISTrivium.h"

@interface FISLocationsDataStore : NSObject

@property (strong, nonatomic) NSMutableArray *locations;

+ (instancetype)sharedLocationsDataStore;


@end
