//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Flatiron School on 7/5/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *triviumTextField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButtonProp;
@property (weak, nonatomic) IBOutlet UIButton *saveButtonProp;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.triviumTextField.accessibilityIdentifier = @"Trivium TextField";
    self.triviumTextField.accessibilityLabel = @"Trivium TextField";
    
    self.cancelButtonProp.accessibilityLabel = @"Cancel Button";
    self.cancelButtonProp.accessibilityIdentifier = @"Cancel Button";
    
    self.saveButtonProp.accessibilityIdentifier = @"Save Button";
    self.saveButtonProp.accessibilityLabel = @"Save Button";
//    self.addNewStore = [FISLocationsDataStore sharedLocationsDataStore];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveButton:(id)sender {
    
//    FISLocation *newTrivium = [[FISLocation alloc]init];
//    newTrivium.trivia = self.triviumTextField.text;
    
    FISTrivium *newTrivium = [[FISTrivium alloc]initWithContent:self.triviumTextField.text likes:0];
    
    [self.location.trivia addObject:newTrivium];
    [self dismissViewControllerAnimated:YES completion:nil];
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
