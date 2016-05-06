//
//  SoundPlay.m
//  Piano
//
//  Created by likai on 14-10-9.
//  Copyright (c) 2014年 Piano. All rights reserved.
//

#import "SoundPlay.h"

@implementation SoundPlay
static SoundPlay *g_ptrSoundPlay = nil;

+ (id)sharedInstance
{
    @synchronized(self)
    {
        if (g_ptrSoundPlay==nil)
        {
            g_ptrSoundPlay = [[SoundPlay alloc] init];
        }
    }
    
    return g_ptrSoundPlay;
}

- (void)playSoundKeytoneByMusicScore:(PianoMusic) pianoMusic
{
    NSDate *now = [[NSDate alloc] init];
    if (self.prePlayDate==nil)
    {
        self.prePlayDate = now;
    }
    else
        if ([now timeIntervalSinceDate:self.prePlayDate] > 0.12)
        {
            self.prePlayDate = now;
        }
        else
        {
            return;
        }
    
    NSString *fileStr = @"SOUNDPLAY_TXT_zhiAiLisi";
    if(pianoMusic == PianoMusic_zhiAiLisi)
    {
        fileStr = SOUNDPLAY_TXT_zhiAiLisi;
    }
    else if(pianoMusic == PianoMusic_qiuRiSiYu)
    {
        fileStr = SOUNDPLAY_TXT_qiuRiSiYu;
    }
    else if(pianoMusic == PianoMusic_tongNian)
    {
        fileStr = SOUNDPLAY_TXT_tongNian;
    }
    else if(pianoMusic == PianoMusic_daHai)
    {
        fileStr = SOUNDPLAY_TXT_daHai;
    }
    else if(pianoMusic == PianoMusic_tongZuoDeNi)
    {
        fileStr = SOUNDPLAY_TXT_tongZuoDeNi;
    }
    else if(pianoMusic == PianoMusic_yinWeiAiQingi)
    {
        fileStr = SOUNDPLAY_TXT_yinWeiAiQing;
    }
    else if(pianoMusic == PianoMusic_yiQianGeShangXin)
    {
        fileStr = SOUNDPLAY_TXT_YiQianGeShangXin;
    }
    else if(pianoMusic == PianoMusic_yinWeiAiQingi)//1
    {
        fileStr = SOUNDPLAY_TXT_YinWeiAiQing;
    }
    else if(pianoMusic == PianoMusic_hongDou)//1
    {
        fileStr = SOUNDPLAY_TXT_HongDou;
    }
    else if(pianoMusic == PianoMusic_liangZhiLaoHu)//1
    {
        fileStr = SOUNDPLAY_TXT_LiangZhiLaoHu;
    }
    else if(pianoMusic == PianoMusic_shengRiKuaiLe)//1
    {
        fileStr = SOUNDPLAY_TXT_ShengRiKuaiLe;
    }
    else if(pianoMusic == PianoMusic_soundtest12)//1
    {
        fileStr = soundtest12;
    }
    else if(pianoMusic == PianoMusic_tBingYu)//1
    {
        fileStr = SOUNDPLAY_TXT_BingYu;
    }
    else if(pianoMusic == PianoMusic_yueLiangDaiBiao)//1
    {
        fileStr = SOUNDPLAY_TXT_YueLiangDaiBiao;
    }
    else if(pianoMusic == PianoMusic_mengZhongDeHunLi)//1
    {
        fileStr = SOUNDPLAY_TXT_MengZhongDeHunLi;
    }
    else if(pianoMusic == PianoMusic_kaNong)//1
    {
        fileStr = SOUNDPLAY_TXT_KaNong;//
    }
    else if(pianoMusic == PianoMusic_yuDeYinJi)//1
    {
        fileStr = SOUNDPLAY_TXT_YuDeYinJi;
    }
    else if(pianoMusic == PianoMusic_moSiKe)//1
    {
        fileStr = SOUNDPLAY_TXT_MoSiKe;
    }
    else if(pianoMusic == PianoMusic_yEdeGangQingQu5)
    {
        fileStr = SOUNDPLAY_TXT_YEdeGangQingQu5;
    }
    
    NSArray *subStr=[fileStr componentsSeparatedByString:@":"];
    NSString *numString = @"";
    if([subStr count]>musicScoreSign){
        numString=[subStr objectAtIndex:musicScoreSign];
    }else{
        musicScoreSign = 0;
        numString=[subStr objectAtIndex:musicScoreSign];
    }
    
    
    if ([numString rangeOfString:@"."].location != NSNotFound)
    {
        NSArray *subStr2=[numString componentsSeparatedByString:@"."];
        
        for (int i=0;i<[subStr2 count];i++)
        {
            NSString *wavString=[NSString stringWithFormat:@"%@",[subStr2 objectAtIndex:i]];

            SystemSoundID soundID;
            NSURL *soundIdPath = [[NSBundle mainBundle] URLForResource:wavString withExtension:@"mp3"];
            OSStatus error= AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundIdPath,&soundID);
            if (error)
            {
                return;
            }
            
            //添加音频结束时的回调
            AudioServicesAddSystemSoundCompletion(soundID, NULL, NULL, soundCompletionCallback, (__bridge void*)self);
            
            //开始播放
            AudioServicesPlaySystemSound(soundID);
        }
    }
    else
    {
        NSString *wavString=[NSString stringWithFormat:@"%@",numString];
        //DNSLog(@"wavString=%@",wavString);
        
        SystemSoundID soundID;
        NSURL *soundIdPath = [[NSBundle mainBundle] URLForResource:wavString withExtension:@"mp3"];
        OSStatus error= AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundIdPath,&soundID);
        if (error)
        {
            return;
        }
        
        //添加音频结束时的回调
        AudioServicesAddSystemSoundCompletion(soundID, NULL, NULL, soundCompletionCallback, (__bridge void*)self);
        
        //开始播放
        AudioServicesPlaySystemSound(soundID);
    }
    
    if (musicScoreSign>=[subStr count]-1)
    {
        musicScoreSign=0;
    }
    else
    {
        musicScoreSign=musicScoreSign+1;//游标向后移动
    }
}

static void soundCompletionCallback (SystemSoundID soundID, void* myself)
{
    AudioServicesRemoveSystemSoundCompletion(soundID);
    AudioServicesDisposeSystemSoundID(soundID);
}

static void soundCompletionCallbackByName (SystemSoundID soundID, void* myself)
{
    AudioServicesRemoveSystemSoundCompletion(soundID);
    AudioServicesDisposeSystemSoundID(soundID);
}


@end
