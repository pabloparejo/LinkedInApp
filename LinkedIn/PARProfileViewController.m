//
//  PARProfileViewController.m
//  LinkedIn
//
//  Created by parejo on 28/4/15.
//  Copyright (c) 2015 PabloParejo. All rights reserved.
//

#import "PARProfileViewController.h"
@import MessageUI;

@interface PARProfileViewController () <MFMailComposeViewControllerDelegate>
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
    
    /*NSMutableDictionary *viewsDictionary = [@{@"eduView":self.educationLabel, @"labelView":[NSNull null]} mutableCopy];
    for (NSString *tag in [self.model objectForKey:@"skills"]) {
        NSLog(@"%@", tag);
        UILabel *label = [UILabel new];
        [viewsDictionary setObject:label forKey:@"labelView"];
        [self.view addSubview:label];
        NSArray *pos_v = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[eduView]-[labelView]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
        
        NSArray *pos_h = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[labelView]"
                                                                            options:0
                                                                            metrics:nil
                                                                              views:viewsDictionary];
        
        [label addConstraints:pos_v];
        [label addConstraints:pos_h];
        
        [label setText:tag];
        [label setBackgroundColor:[UIColor colorWithRed:0.1 green:0.2 blue:0.3 alpha:1]];
        [label setTextColor:[UIColor whiteColor]];
        [label.layer setCornerRadius:6];
        [label setTextAlignment:NSTextAlignmentCenter];
        [label setClipsToBounds:YES];
    }*/
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions

- (IBAction)sendEmail:(id)sender {
    MFMailComposeViewController *mailVC = [MFMailComposeViewController new];
    [mailVC setMailComposeDelegate:self];
    [self presentViewController:mailVC animated:YES completion:nil];
}

-(void) mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if (result == MFMailComposeResultSent) {
        NSLog(@"nice!");
    }else{
        NSLog(@"Did not send...");
    }
    [controller dismissViewControllerAnimated:YES completion:nil];
}



@end
