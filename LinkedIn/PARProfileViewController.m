//
//  PARProfileViewController.m
//  LinkedIn
//
//  Created by parejo on 28/4/15.
//  Copyright (c) 2015 PabloParejo. All rights reserved.
//

#import "PARProfileViewController.h"

@interface PARProfileViewController ()
@property (nonatomic, strong) NSDictionary *model;
@end

@implementation PARProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSDate *birthdate = [df dateFromString: @"1992-01-13"];
    
    self.model = @{ @"name": @"Pablo Parejo",
                    @"birthdate": birthdate,
                    @"skills": @[@"iOS",@"Android", @"HTML", @"CSS", @"Django"],
                    @"education": @"Telecomm Engineering, URJC",
                    @"occupation": @"Frontend Developer & UX/UI Designer"};
    
    
    [self setTitle:@"Curriculum Vitae"];
    [self.nameLabel setText:[self.model objectForKey:@"name"]];
    [self.educationLabel setText:[self.model objectForKey:@"education"]];
    [self.occupationLabel setText:[self.model objectForKey:@"occupation"]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions

- (IBAction)sendEmail:(id)sender {
    
}
@end
