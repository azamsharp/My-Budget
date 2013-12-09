//
//  DonationCell.m
//  DonationTracker
//
//  Created by Mohammad Azam on 7/3/13.
//  Copyright (c) 2013 Mohammad Azam. All rights reserved.
//

#import "DonationCell.h"

@implementation DonationCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) bind:(Donation *)donation
{
    self.nameLabel.text = donation.name;
    self.pledgedAmountLabel.text = [NSString stringWithFormat:@"$%.2f",donation.pledgedAmount];
    self.paidAmountLabel.text =  [NSString stringWithFormat:@"$%.2f",donation.paidAmount];
    self.remainingAmountLabel.text =  [NSString stringWithFormat:@"$%.2f",donation.remainingAmount];
    
    if(donation.remainingAmount < 0)
    {
        [self.remainingAmountLabel setTextColor:[UIColor redColor]];
    }
    else
    {
        [self.remainingAmountLabel setTextColor:[UIColor colorWithRed:21.0/255.0 green:120.0/255.0 blue:31.0/255.0 alpha:1.0]];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
