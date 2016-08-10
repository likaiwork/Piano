//
//  ParentsControlVC.m
//  Piano
//
//  Created by leiziyun on 16/6/21.
//  Copyright © 2016年 jordanLi. All rights reserved.
//

#import "ParentsControlVC.h"

@interface ParentsControlVC ()

@end

@implementation ParentsControlVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.titleLabel setText:NSLocalizedString(@"Ask your Parents to help you.", nil)];
    [self.uiButton setTitle:NSLocalizedString(@"Commit", nil) forState:UIControlStateNormal];
    [self.uitextField setPlaceholder:NSLocalizedString(@"Enter the answer", nil)];
    [self.uiButton addTarget:self action:@selector(buttonClick1:) forControlEvents:UIControlEventTouchUpInside];
 
    self.titleLabel.width = UI_SCREEN_WIDTH;
    self.contentLabel.width = UI_SCREEN_WIDTH;
    self.uiButton.width = UI_SCREEN_WIDTH;
    self.uitextField.width = UI_SCREEN_WIDTH;
    self.uiButton.width = UI_SCREEN_WIDTH;
    
    UITapGestureRecognizer*tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Actiondo:)];//[[UITapGestureRecognizer alloc]initWithTarget:selfaction:@selector(Actiondo:)];
    
    [self.view addGestureRecognizer:tapGesture];
}

-(void)Actiondo:(id)sender{
    [self.uitextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonClick1:(id)sender
{
    if([self.uitextField.text isEqualToString:@"25"]){
        [self dismissViewControllerAnimated:YES completion:nil];
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        NSInteger myInteger = [userDefaults integerForKey:@"myInteger"];
        myInteger++;
        //存储时，除NSNumber类型使用对应的类型意外，其他的都是使用setObject:forKey:
        [userDefaults setInteger:myInteger forKey:@"myInteger"];
        if(self.buttonClick){
            self.buttonClick();
        }
    }
    
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
