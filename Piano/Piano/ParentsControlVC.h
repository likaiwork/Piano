//
//  ParentsControlVC.h
//  Piano
//
//  Created by leiziyun on 16/6/21.
//  Copyright © 2016年 jordanLi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentsControlVC : UIViewController

@property (nonatomic,weak) IBOutlet UILabel * titleLabel;
@property (nonatomic,weak) IBOutlet UILabel * contentLabel;
@property (nonatomic,weak) IBOutlet UITextField * uitextField;
@property (nonatomic,weak) IBOutlet UIButton * uiButton;

@property (nonatomic,copy) void (^buttonClick)(void);
@end
