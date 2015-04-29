//
//  PARProfileViewController.h
//  LinkedIn
//
//  Created by parejo on 28/4/15.
//  Copyright (c) 2015 PabloParejo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PARProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *occupationLabel;
@property (weak, nonatomic) IBOutlet UILabel *educationLabel;

- (IBAction)sendEmail:(id)sender;

@end
