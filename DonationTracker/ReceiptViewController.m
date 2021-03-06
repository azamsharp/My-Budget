//
//  ReceiptViewController.m
//  DonationTracker
//
//  Created by Mohammad Azam on 7/11/13.
//  Copyright (c) 2013 Mohammad Azam. All rights reserved.
//

#import "ReceiptViewController.h"

@interface ReceiptViewController ()<UIToolbarDelegate>

@property (nonatomic,weak) IBOutlet UIImageView *receiptImageView;
@property (nonatomic,weak) IBOutlet UIToolbar *toolbar; 

@end

@implementation ReceiptViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

-(IBAction) close:(id) sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setup];
}

-(void) setup
{
    self.toolbar.delegate = self;
    
    UIImage *receiptImage = [AppHelper loadImageFromDocumentsDirectory:self.payment.receiptPath];
    
    [self.receiptImageView setImage:receiptImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
