//
//  ViewController.m
//  Piano
//
//  Created by likai on 14-10-9.
//  Copyright (c) 2014年 Piano. All rights reserved.
//

#import "ViewController.h"
#import "SoundPlay.h"
#import <ReactiveCocoa/ReactiveCocoa.h>


@interface ViewController ()

@property (assign, nonatomic) PianoMusic painoMusic;

@property (strong,nonatomic) UIView * whiteView;
@end

@implementation ViewController


-(void)buttonClick:(id)sender
{
    [[SoundPlay sharedInstance] playSoundKeytoneByMusicScore:_painoMusic];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _painoMusic = PianoMusic_qiuRiSiYu;
    UIImageView * uiImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"背景.png"]];
    [uiImageView setFrame:CGRectMake(0.0, 0.0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT)];
    [self.view addSubview:uiImageView];
    _whiteView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT)];
    [_whiteView setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:_whiteView];
    [self addWhiteButton];
    [self addImage];
    self.navigationController.navigationBar.hidden = YES;
}

-(void)addWhiteButton
{
    float whiteButtonWidth = (UI_SCREEN_WIDTH - 15.0f*2.50f)/14.0f;
    float blockButtonWith = 27;
    for(int i = 0;i<14;i++)
    {
        UIButton * whiteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [whiteButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
        [whiteButton setFrame:CGRectMake(2.5+2.5*i+i*whiteButtonWidth, UI_SCREEN_HEIGHT - 110, whiteButtonWidth, 100)];
        [whiteButton setBackgroundImage:[UIImage imageNamed:@"白键.png"] forState:UIControlStateNormal];
        [whiteButton setBackgroundImage:[UIImage imageNamed:@"白键按下.png"] forState:UIControlStateHighlighted];
        [whiteButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [_whiteView addSubview:whiteButton];
        
        UIButton * blackButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [blackButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
        [blackButton setBackgroundImage:[UIImage imageNamed:@"黑键.png"] forState:UIControlStateNormal];
        [blackButton setBackgroundImage:[UIImage imageNamed:@"黑键按下.png"] forState:UIControlStateHighlighted];
        [blackButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [blackButton setFrame:CGRectMake(whiteButton.right-blockButtonWith/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        if(i ==0){
            [self.view addSubview:blackButton];
        }else if(i ==1){
            [self.view addSubview:blackButton];
        }else if(i ==3){
            [self.view addSubview:blackButton];
        }else if(i ==4){
            [self.view addSubview:blackButton];
        }else if(i ==5){
            [self.view addSubview:blackButton];
        }else if(i ==7){
            [self.view addSubview:blackButton];
        }else if(i ==8){
            [self.view addSubview:blackButton];
        }else if(i ==10){
            [self.view addSubview:blackButton];
        }else if(i ==11){
            [self.view addSubview:blackButton];
        }else if(i ==12){
            [self.view addSubview:blackButton];
        }
        [blackButton bringSubviewToFront:_whiteView];
 
    }
}

-(void)addblackButton
{
    for(int i = 0;i<14;i++)
    {
        UIButton * blackButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [blackButton.layer setCornerRadius:5.0]; //设置矩形四个圆角半径
        
        if(i==0)
        {
            [blackButton setFrame:CGRectMake(61/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==1)
        {
            [blackButton setFrame:CGRectMake(142/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==2)
        {
            [blackButton setFrame:CGRectMake(302/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==3)
        {
            [blackButton setFrame:CGRectMake(383/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==4)
        {
            [blackButton setFrame:CGRectMake(464/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==5)
        {
            [blackButton setFrame:CGRectMake(624/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==6)
        {
            [blackButton setFrame:CGRectMake(705/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==7)
        {
            [blackButton setFrame:CGRectMake(865/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==8)
        {
            [blackButton setFrame:CGRectMake(946/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        else if(i==9)
        {
            [blackButton setFrame:CGRectMake(1027/2, UI_SCREEN_HEIGHT - 130, 27, 71)];
        }
        [blackButton setBackgroundImage:[UIImage imageNamed:@"黑键.png"] forState:UIControlStateNormal];
        [blackButton setBackgroundImage:[UIImage imageNamed:@"黑键按下.png"] forState:UIControlStateHighlighted];
        [blackButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:blackButton];
    }
}

-(void)addImage
{
    UIButton * musicButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [musicButton setBackgroundImage:[UIImage imageNamed:@"音乐.png"] forState:UIControlStateNormal];
    [musicButton setFrame:CGRectMake(15, 154, 35, 35)];
    [self.view addSubview:musicButton];
 
    
    UIButton * setButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [setButton setBackgroundImage:[UIImage imageNamed:@"设置.png"] forState:UIControlStateNormal];
    [setButton setFrame:CGRectMake(46, 154, 35, 35)];
    [setButton addTarget:self action:@selector(setButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:setButton];
    
    UIImageView * uiImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"全键钢琴.png"]];
    [uiImageView setFrame:CGRectMake(80, 154, (UI_SCREEN_WIDTH-160), 35)];
    [self.view addSubview:uiImageView];
}

-(IBAction)setButtonClick:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:NSLocalizedString(@"Please choose songs", nil)
                                  delegate:self
                                  cancelButtonTitle:NSLocalizedString(@"Cancel Str", nil)
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:NSLocalizedString(@"Autumn whispers", nil),NSLocalizedString(@"For Alice", nil),NSLocalizedString(@"Wedding in a dream", nil),NSLocalizedString(@"Cannon", nil),NSLocalizedString(@"Mark of rain", nil),NSLocalizedString(@"Night on the outskirts of Moscow", nil),NSLocalizedString(@"Piano music at night 5", nil),nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actionSheet showInView:self.view];
 
    [[actionSheet rac_buttonClickedSignal] subscribeNext:^(NSNumber* buttonIndex) {   // UIActionSheet的
        NSString * actionTitle = [actionSheet buttonTitleAtIndex:[buttonIndex integerValue]];
        if([actionTitle isEqual:NSLocalizedString(@"Autumn whispers", nil)])
        {
            _painoMusic = PianoMusic_qiuRiSiYu;
        }
        else if([actionTitle isEqual:NSLocalizedString(@"For Alice", nil)])
        {
            _painoMusic = PianoMusic_zhiAiLisi;
        }
        else if([actionTitle isEqual:NSLocalizedString(@"Wedding in a dream", nil)])
        {
            _painoMusic = PianoMusic_mengZhongDeHunLi;
        }
        else if([actionTitle isEqual:NSLocalizedString(@"Cannon", nil)])
        {
            _painoMusic = PianoMusic_kaNong;
        }
        else if([actionTitle isEqual:NSLocalizedString(@"Mark of rain", nil)])
        {
            _painoMusic = PianoMusic_yuDeYinJi;
        }
        else if([actionTitle isEqual:NSLocalizedString(@"Night on the outskirts of Moscow", nil)])
        {
            _painoMusic = PianoMusic_moSiKe;
        }
        else if([actionTitle isEqualToString:NSLocalizedString(@"Piano music at night 5", nil)])
        {
            _painoMusic = PianoMusic_yEdeGangQingQu5;
        }
    }];
}

 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
