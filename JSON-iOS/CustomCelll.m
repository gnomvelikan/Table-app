//
//  CustomCell.m
//  JSON-iOS
//
//  Created by N.Kamenshchikov on 23/11/2016.
//  Copyright © 2016 GnomVelikan. All rights reserved.
//

#import "CustomCell.h"
#import "Model.h"


@implementation CustomCell {
    UILabel* _nameValue;
    UILabel* _weightValue;
    
}



- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect nameLabelRectangle = CGRectMake(0, 5, 70, 15);
        UILabel* nameLabel = [[UILabel alloc] initWithFrame:nameLabelRectangle];
        nameLabel.textAlignment = NSTextAlignmentRight;
        nameLabel.text = @"Name:";
        nameLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:nameLabel];
        
        CGRect weightLabelRectangle = CGRectMake( 0, 26, 70, 15);
        UILabel* weightLabel = [[UILabel alloc] initWithFrame:weightLabelRectangle];
        weightLabel.textAlignment = NSTextAlignmentRight;
        weightLabel.text = @"Weight:";
        weightLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:weightLabel];
        
        CGRect nameValueRectangle = CGRectMake(80, 5, 200, 15);
        _nameValue = [[UILabel alloc] initWithFrame:nameValueRectangle];
        [self.contentView addSubview:_nameValue];
        
        CGRect weightValueRectangle = CGRectMake(80, 25, 200, 15);
        _weightValue = [[UILabel alloc] initWithFrame:weightValueRectangle];
        [self.contentView addSubview:_weightValue];
        
        
        
    }
    return self;
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) setName:(NSString *)n {
    if (![n isEqualToString:_name])
    {
        _name = [n copy];
        _nameValue.text = _name;
        
    }
}




- (void) setWeight:(NSString *)w {
    if (! [w isEqualToString:_weight]) {
        _weight = [w copy];
        _weightValue.text = _weight;
        
    }
}


@end




