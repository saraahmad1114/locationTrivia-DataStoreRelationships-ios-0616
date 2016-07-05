//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *latitude;
@property (weak, nonatomic) IBOutlet UITextField *longitude;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation FISAddLocationViewController
- (IBAction)cancelTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (IBAction)saveTapped:(id)sender {
    FISLocation *newLocation = [[FISLocation alloc]init];
    newLocation.name = self.name.text;
    newLocation.latitude = [self.latitude.text floatValue];
    newLocation.longitude = [self.longitude.text floatValue];
    FISLocationsDataStore *newStore = [FISLocationsDataStore sharedLocationsDataStore];
    //This is not an instance but is actually a reference because it doesn't have an alloc init
    [newStore.locations addObject:newLocation];
    
    //didn't yet add it to the dataStore array called locations 
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.name.accessibilityIdentifier = @"nameField";
    self.name.accessibilityLabel = @"nameField";
    
    self.latitude.accessibilityIdentifier = @"latitudeField";
    self.latitude.accessibilityLabel =@"latitudeField";
    
    self.longitude.accessibilityLabel = @"longitudeField";
    self.longitude.accessibilityIdentifier = @"longitudeField";
    
    self.saveButton.accessibilityIdentifier = @"saveButton";
    self.saveButton.accessibilityLabel = @"saveButton";
    
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    self.cancelButton.accessibilityLabel = @"cancelButton"; 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
