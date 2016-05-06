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
#import <MessageUI/MessageUI.h>

@interface ViewController ()<MFMailComposeViewControllerDelegate>

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
    [self addSetingImage];
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


-(void)addSetingImage
{
    UIButton * musicButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [musicButton setBackgroundImage:[UIImage imageNamed:@"音乐.png"] forState:UIControlStateNormal];
    [musicButton setFrame:CGRectMake(15, 154, 35, 35)];
    musicButton.tag = 1;
    [musicButton addTarget:self action:@selector(setButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:musicButton];
 
    
    UIButton * setButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [setButton setBackgroundImage:[UIImage imageNamed:@"设置.png"] forState:UIControlStateNormal];
    [setButton setFrame:CGRectMake(46, 154, 35, 35)];
    setButton.tag = 2;
    [setButton addTarget:self action:@selector(setButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:setButton];
    
    UIImageView * uiImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"全键钢琴.png"]];
    [uiImageView setFrame:CGRectMake(80, 154, (UI_SCREEN_WIDTH-160), 35)];
    [self.view addSubview:uiImageView];
}

- (void)shareAction {
    NSURL *urlToShare = [NSURL URLWithString:@"https://itunes.apple.com/us/app/gang-qin-piano/id1102200208?l=zh&ls=1&mt=8"];
    
    NSArray *activityItems = @[urlToShare];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems
                                            
                                                                            applicationActivities:nil];
    
    //不出现在活动项目
    
    activityVC.excludedActivityTypes = @[UIActivityTypePrint, UIActivityTypeCopyToPasteboard,
                                         
                                         UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll,UIActivityTypePostToWeibo];
    
    [self presentViewController:activityVC animated:TRUE completion:nil];
    
}

#pragma mark -
#pragma mark Delegate Method
-(void)mailComposeController:(MFMailComposeViewController *)controller
         didFinishWithResult:(MFMailComposeResult)result
                       error:(NSError *)error
{
    switch(result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail send canceled...");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved...");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send...");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail send errored:%@...",[error localizedDescription]);
            break;
        default:
            break;
    }
    //    [self dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


-(void)setButtonClick:(id)sender
{
 
    UIButton * uibutton = (UIButton*)sender;
    int tag = (int)uibutton.tag;
    if(tag==1){
        UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                      initWithTitle:NSLocalizedString(@"Please choose songs", nil)
                                      delegate:self
                                      cancelButtonTitle:NSLocalizedString(@"Cancel Str", nil)
                                      destructiveButtonTitle:nil
                                      otherButtonTitles:NSLocalizedString(@"Rage Us", nil),NSLocalizedString(@"Share To Friends", nil),NSLocalizedString(@"Feedback", nil),nil];
        actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
        [actionSheet showInView:self.view];
        
        __weak typeof(self) weakSelf = self;
        [[actionSheet rac_buttonClickedSignal] subscribeNext:^(NSNumber* buttonIndex) {   // UIActionSheet的
            NSString * actionTitle = [actionSheet buttonTitleAtIndex:[buttonIndex integerValue]];
            if([actionTitle isEqual:NSLocalizedString(@"Rage Us", nil)])
            {
                [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/gang-qin-piano/id1102200208?l=zh&ls=1&mt=8"]];
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Share To Friends", nil)])
            {
                [weakSelf shareAction];
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Feedback", nil)])
            {
                // 1.初始化编写邮件的控制器
                MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
                if (!mailViewController) {
                    // 在设备还没有添加邮件账户的时候mailViewController为空，下面的present view controller会导致程序崩溃，这里要作出判断
                    NSLog(@"设备还没有添加邮件账户");
                }
                mailViewController.mailComposeDelegate = self;
                
                // 2.设置邮件主题
                [mailViewController setSubject:@"问题反馈"];
                
                [mailViewController setToRecipients:[NSArray arrayWithObjects:@"insistjordan@163.com", nil]];
                
                
                // 5.呼出发送视图
                [self presentViewController:mailViewController animated:YES completion:nil];
            }
            
        }];
        
    }else if(tag==2){
        UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                      initWithTitle:NSLocalizedString(@"Please choose songs", nil)
                                      delegate:self
                                      cancelButtonTitle:NSLocalizedString(@"Cancel Str", nil)
                                      destructiveButtonTitle:nil
                                      otherButtonTitles:NSLocalizedString(@"Autumn whispers", nil),NSLocalizedString(@"For Alice", nil),NSLocalizedString(@"Wedding in a dream", nil),NSLocalizedString(@"Cannon", nil),NSLocalizedString(@"Mark of rain", nil),NSLocalizedString(@"Night on the outskirts of Moscow", nil),NSLocalizedString(@"Piano music at night 5", nil),nil];
        actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
        [actionSheet showInView:self.view];
        
        __weak typeof(self) weakSelf = self;
        [[actionSheet rac_buttonClickedSignal] subscribeNext:^(NSNumber* buttonIndex) {   // UIActionSheet的
            NSString * actionTitle = [actionSheet buttonTitleAtIndex:[buttonIndex integerValue]];
            if([actionTitle isEqual:NSLocalizedString(@"Autumn whispers", nil)])
            {
                weakSelf.painoMusic = PianoMusic_qiuRiSiYu;
            }
            else if([actionTitle isEqual:NSLocalizedString(@"For Alice", nil)])
            {
                weakSelf.painoMusic = PianoMusic_zhiAiLisi;
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Wedding in a dream", nil)])
            {
                weakSelf.painoMusic = PianoMusic_mengZhongDeHunLi;
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Cannon", nil)])
            {
                weakSelf.painoMusic = PianoMusic_kaNong;
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Mark of rain", nil)])
            {
                weakSelf.painoMusic = PianoMusic_yuDeYinJi;
            }
            else if([actionTitle isEqual:NSLocalizedString(@"Night on the outskirts of Moscow", nil)])
            {
                weakSelf.painoMusic = PianoMusic_moSiKe;
            }
            else if([actionTitle isEqualToString:NSLocalizedString(@"Piano music at night 5", nil)])
            {
                weakSelf.painoMusic = PianoMusic_yEdeGangQingQu5;
            }
        }];
    }
    
}

 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
