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
                    @"education": @"Telecomm Engineering, URJC"};
    
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
