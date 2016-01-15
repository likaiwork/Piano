//
//  SoundPlay.h
//  Piano
//
//  Created by likai on 14-10-9.
//  Copyright (c) 2014年 Piano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>


#define SOUNDPLAY_TXT_zhiAiLisi @"56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:51:52:54:56.28:35:40:47:57:56:54.23:35:39:45:56:54:52.25:32:37:44:54:52:51.20:32:44:44:56:44:56:56:68:55:56:55:56:55:56:55:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:51:52:54:56.28:35:40:47:57:56:54.23:35:39:45:56:54:52.25:32:37:44:54:52:51.20:32:44:44:56:44:56:56:68:55:56:55:56:55:56:55:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:52.44.40.38:52.45.40.37:47.44.52.38.40.35:45:49:52.33:37:40:37:57.40:37:56:56.33:38:54.42:38:62.42:38:61:61.33:59.44:57.38.35.33:56.44:54.35.38.33:52.44:50.33:37:49.40:37:50:49.40:47:49.37:50:52.33:37:40:37:54.40:55.37:56.32:37:40:56.37:57.42.30:49.33:52.35:44:35:54.44:52:51:54.35:45:51:52.44.40:59:47:59:49:59:51.47.45:59:52.47.44:59:54.47.42.45:59:56.47.44.40:59:64:63:61.37.33:59:57:56:54.39.35:59:57:54:52.40:59:47:59:49:59:51.47.45:59:52.47.44:59:54.47.45.42:59:56.47.44.40:59:64:63:61.33.37:59:57:56:54.35.39:59:57:54:56:57:56:55:56:51:56:55:56:51:56:55:56:51:56:55:56:51:56:55:56:55:56:55:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:51:52:54:56.28:35:40:47:57:56:54.23:35:39:45:56:54:52.25:32:37:44:54:52:51.20:32:44:44:56:44:56:56:68:55:56:55:56:55:56:55:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:25:25:25:25:25:53.44.47.50.25:25:25:25:25:25:54.49.45.25:25:25:25:56.53.25:57.54.25:57.54.48.25:25:25:25:57.54.48.25:25:56.52.49.25:25:25:25:25:25:54.45.25.18:18.25:25.18:18.25:52.44.18.25:51.42.25.18:49.40.46.19.25:25.19:25.19:25.19:49.40.19.25:19.25:49.40.25.20:25.20:52.44.25.20:20.25:51.42.24.20:24.20:49.40.25:25:25:25:25:25:53.50.47.44.25:25:25:25:25:25:54.49.45.25:25:25:25:56.53.25:57.54.25:57.54.25:25:25:25:57.54.25:25:57.54.26:26:26:26:26:26:55.47.26:26:26:26:54.45.26:52.43.26:50.42.26:26:26:26:49.45.42.26:26:48.45.42.27:27:27:27:48.45.42.27:27:49.40.44.28:51.44.36.32:37.13:40:44:49:52:56:54.44.40.37:52:51:49.44.40.37:52:56:61:64:68:66.44.40.37:64:63:61.44.40.37:64:68:73:76:80:78.44.40.37:76:75:74.44.40.37:73:72:71:70:69:68:67:66:65:64:63:62:61:60:59:58:57:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.25:32:37:51:52:54:56.28:35:40:47:57:56:54.23:35:39:45:56:54:52.25:32:37:44:54:52:51.20:32:44:44:56:44:56:56:68:55:56:55:56:55:56:55:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:48:51:52.25:32:37:44:56:55:56:55:56:51:54:52:49.25:32:37:40:44:49:51.20:32:36:44:52:51:49.40.25.13";



#define SOUNDPLAY_TXT_qiuRiSiYu @"25:32:40:32:40:32:40:32:25:32:40:32:40:32:40:32:32.25:32:56.40:59.32:59.40:57:57.32:56:56.40:57:56.32:52:54.27:32:39:32:39:32:44.39:32:54.24:32:54.39:57.32:57.39:56:56.32:54:54.39:56:54.32:51:52.25:32:40:32:40:32:49.40:32:59.29:37:59.44:62.37:63.44:61:61.37:59:59.44:61:59.37:56:57.30:37:45:37:45:37:57.45:59:57:37:54:56.27:36:44:35:44:35:51.44:59:57:57.25:56.35:54:56.41:35:56.44:49:50:49:62.31:38:62.46:65.38:65.46:63:63.38:62:62.46:63:62.38:58:60.33:38:48:38:48:38:50.48:38:60.30:38:60.45:63.38:63.45:62:62.50:60:60.45:62:60.38:57:58.31:38:46:38:58.46:55.38:56.46:55.26:65.19:38:65.47:68.38:69.46:67:67.50:65:65.46:67:65.38:62:63.36:43:51:43:51:43:63.36:65:63.43:60:62.31:38:46:38:31:38:55.46:65:63:63.26:36:62:60:62.42:45:50:53:57:62:70.31:62.38:46:69.38:70:72.46:70.38:69.46:67.38:70.31:62.38:46:69.38:70:72.46:70.38:69.46:67.38:69.30:62.38:45:66.38:67:70.45:69.50:67.45:65.38:69.26:62.36:45:66.36:67:70.45:69.36:67.45:65.36:67.31:69:70.29:72:74.22:65.50:53:70.50:72:75.53:74.50:72.53:70.50:74.22:65.50:53:70.50:72:75.53:74.50:72.53:70.50:72.18:62.38:42:69.38:70:74.41:72.38:70.41:69.38:72.26:62.33:54:69.33:70:74.41:72.33:70.41:69.33:70.31:38:46:38:70.46:72.38:70.46:67.38:69.33:43:49:43:52:38:50:33:26"

#define SOUNDPLAY_TXT_tongNian @"48:51:51:51:48:53:53:55:53:53:53:51:56:56:56:56:53:56:53:51:48:51:51:51:48:53:53:55:53:53:53:51:56:56:56:56:53:53:56:58:63:63:63:63:60:58:56:56:53:53:53:56:53:56:58:58:58:56:58:56:60:58:58:60:60:60:60:58:56:56:56:58:53:51:51:51:53:51:58:60:56:60:60:60:60:58:56:56:56:58:53:51:51:51:53:51:58:60:56"

#define SOUNDPLAY_TXT_daHai @"32:34:37:37:37:37:34:32:37:37:39:37:34:37:39:39:39:39:37:34:39:39:41:39:41:44:46:46:44:46:44:41:39:41:39:37:34:32:34:37:37:37:37:34:37:32:34:37:37:37:37:34:32:37:37:39:37:34:37:39:39:39:39:37:34:39:39:41:39:41:44:46:46:44:46:44:41:39:41:39:37:34:32:34:37:37:37:37:39:37:41:44:46:46:46:46:49:46:44:44:46:44:41:39:37:37:37:37:39:41:41:39:37:37:37:37:49:46:44:44:46:44:41:44:46:49:49:46:44:41:44:46:46:46:46:49:46:44:44:46:44:41:39:37:37:37:37:44:41:41:39:37:37:37:37:39:41:44:44:41:44:41:44:46:34:41:39:37:37"


#define SOUNDPLAY_TXT_tongZuoDeNi  @"49:49:49:49:46:47:49:53:51:51:51:51:47:51:49:49:49:49:49:53:51:49:47:47:47:47:47:46:44:42:54:54:54:54:49:51:54:54:58:56:56:56:56:54:53:51:53:53:53:53:53:54:56:49:53:53:54:56:54:53:54:54:54:54:54:49:51:54:58:56:56:56:56:54:53:51:53:53:53:53:53:54:56:49:53:53:54:56:54:53:54:54:54:54:49:51:54:58:56:56:56:54:53:51:53:53:53:53:54:56:49:53:53:54:56:54:53:56:54"

#define SOUNDPLAY_TXT_yinWeiAiQing @"50:50:50:48:50:53:53:55:55:55:53:50:55:53:58:58:58:55:60:58:53:55:55:55:58:55:50:48:50:50:50:48:50:53:53:55:55:55:53:50:55:53:58:58:55:60:58:53:55:55:55:58:55:62:60:53:58:60:62:60:58:57:58:57:55:53:55:58:60:62:60:58:57:58:57:50:53:55:55:53:55:58:58:60:62:63:62:60:58:55:55:63:62:60:58:63:62:60:58:60:62:60:58:58:60:62:58:67:65:62:60:58:55:53:58:62:65:67:62:60:58:55:58:58:60:58"

#define SOUNDPLAY_TXT_YiQianGeShangXin @"29:34:36:37:39:36:34:32:34:29:29:34:36:37:39:36:34:32:39:41:37:39:41:41:39:37:39:36:37:39:39:36:32:34:29:30:37:37:39:36:34:34:32:34:29:34:36:37:39:36:34:32:34:29:29:34:36:37:39:36:34:32:39:41:37:39:41:41:39:37:39:36:37:39:39:36:32:34:29:30:37:37:39:36:34:34:32:34:37:37:39:41:41:39:37:39:39:39:41:42:42:41:39:41:41:42:44:44:42:41:46:44:42:41:37:39:41:39:37:37:39:41:41:39:37:39:39:39:41:42:42:41:39:41:41:42:44:44:42:41:46:44:42:41:37:36:34"

#define SOUNDPLAY_TXT_YinWeiAiQing @"41:43:46:46:43:46:48:50:48:46:43:50:48:43:50:48:46:43:43:45:46:46:43:50:48:50:48:48:48:50:50:41:43:46:46:43:46:48:50:48:46:43:50:48:43:50:48:46:43:43:45:46:46:43:50:48:46:43:46:50:53:48:48:50:53:50:53:53:50:48:53:53:55:57:58:58:58:57:58:57:57:53:50:53:50:53:55:53:55:53:53:46:43:46:50:48:43:50:48:43:55:53:48:50:53:50:53:53:50:48:53:53:55:57:58:58:58:57:58:57:57:53:50:53:50:53:55:53:55:53:53:46:43:46:50:48:43:50:48:43:50:48:50:48:50:46"

#define SOUNDPLAY_TXT_HongDou @"35:37:42:40:42:40:42:35:37:42:40:42:44:42:35:37:42:40:40:37:42:44:42:40:42:40:40:37:35:35:37:42:40:42:40:42:35:37:42:40:42:44:42:35:37:42:40:40:37:42:44:42:40:49:47:47:44:42:40:42:47:40:42:44:44:42:42:40:44:52:51:49:44:51:49:47:49:49:47:45:47:44:42:40:42:40:37:44:42:42:40:42:47:40:42:44:44:42:42:40:44:52:51:52:49:49:56:54:51:47:44:49:44:42:40:42:49:49:47:42:44:42:40"

#define SOUNDPLAY_TXT_LiangZhiLaoHu @"40.28:42.35:44.28:40.35:40.28:42.35:44.28:40.35:44.28:45.35:47.28:44.28:45.35:47.28:47.28:49:47.35:45:44.28:40.35:47.28:49:47.35:45:44.28:40.35:40.28:35.35:40.28:40.28:35.35:40.28"

#define SOUNDPLAY_TXT_ShengRiKuaiLe @"41:41:43:41:46:45:41:41:43:41:48:46:41:41:53:50:46:45:43:51:51:50:46:48:46"

#define soundtest12 @"50:48:46:48:50:53:53:53:55:53:55:57:58:58:58:58:58:57:55:53:55:55:53:53:53:46:50:51:50:48:48:50:48:50:48:48:46:46:46:46:48:46:46:50:48:46:48:50:53:53:53:55:53:55:57:58:58:58:58:58:57:55:53:55:55:53:53:53:46:50:51:50:48:48:50:48:50:48:48:46:46:46:46:48:46:46:55:57:58:58:58:58:57:55:53:53:53:48:46:58:58:58:58:60:60:58:60:62:58:58:58:58:60:53:53:62:60:58:58:58:58:58:60:60:60:58:57:58:55:55:57:55:57:58:58:58:60:58:60:62:62:60:62:58:55:57:58:58:58:58:57:55:53:53:53:48:46:58:58:58:58:60:60:58:60:62:58:58:58:58:60:53:53:62:60:58:58:58:58:58:60:60:60:58:57:58:55:55:57:55:57:58:58:58:60:58:60:62:62:60:62:58"

#define SOUNDPLAY_TXT_BingYu @"41:41:43:46:48:48:50:43:46:41:41:43:46:48:48:53:53:55:53:50:50:51:53:53:50:50:58:46:48:50:46:46:50:50:43:46:46:48:50:48:43:48:50:48:43:48:50:48:43:50:48:43:50:48:43:48:41:41:43:46:48:48:50:43:46:41:41:43:46:48:48:53:53:55:53:50:51:53:53:53:50:58:46:48:50:46:46:50:50:43:46:46:48:50:48:43:48:43:50:48:43:50:48:43:43:46:53:53:58:55:53:55:55:53:53:53:50:53:53:53:58:55:53:55:53:53:53:53:48:50:48:50:48:43:48:48:50:48:43:48:48:50:48:43:55:53:53:55:53:46:48:53:53:58:55:53:55:53:53:53:53:50:53:53:53:58:55:53:55:53:53:53:53:48:50:48:50:48:43:48:48:50:48:43:55:53:53:55:53:43:46:53:53:58:55:53:48:48:50:48:43:48:48:50:48:43:55:53:53:55:53:46:48:53:55:58:43:46:48:50:48:43:48:48:50:48:43:48:48:50:48:43:55:53:53:55:53:46:48:53:55:58:43:46"

#define SOUNDPLAY_TXT_YueLiangDaiBiao @"36:41:45:48:41:40:45:48:48:50:52:53:50:48:45:43:41:41:41:45:43:41:41:41:43:45:43:41:38:45:43:36:41:45:48:41:40:45:48:48:50:52:53:50:48:45:43:41:41:41:45:43:41:41:41:43:45:43:38:40:43:41:48:45:43:41:48:40:38:40:38:40:38:36:45:48:45:43:41:48:40:38:40:41:41:41:45:43:36:41:45:48:41:40:45:48:48:50:52:53:50:48:45:43:41:41:41:45:43:41:41:41:43:45:43:38:40:43:41"

#define SOUNDPLAY_TXT_MengZhongDeHunLi @"28:35:43:35:43:35:43:64.35:64.28:66:66.35:67:67.43:66:66.35:64:64.43:59:59.35:55:55.43:52:52.35:62:62.33:60:60.40:59:60.48:62:60.40:60.48:40:26:60:60.33:62:62.42:64:64.33:66:66.42:62:62.33:57:57.42:60:60.31:59:59.38:57:59.47:60:59.35:59.28:52:55.35:59:57.43:59.35:52:55.43:59:57.35:59.28:52:55.35:60:59.43:60.33:52:55.40:60:59.48:60.40:60:59.48:60:61.40:62.26:62:64.33:62:64.42:59.31:43:42:71.28:64:67.35:71:69.43:71.35:64:67.43:71:69.35:71.28:64:67.35:72:71.43:72.33:64:67.40:72:71.48:72.40:72:71.48:72:73.40:74.26:74:76.33:74:76.42:71.31:43:42:67.28:59.35:59:60.43:60.33:57.40:57:66.48:66.26:57.33:57:59.42:59.31:55:55.38:64:62.30:64.40:55.35:55:57.43:57.30:54.36:59:57.45:59.35:36:38:67.28:67.35:67:69.43:69.33:67.40:66:64.48:62.26:62.33:64:62.42:59.31:43:42:67.28:67:67.47:67:69.43:69.33:67.40:66:64.48:62.26:62.33:64:62.42:64.28:35:43:35:43:35:43:35"
//
#define SOUNDPLAY_TXT_KaNong  @"59.28:56.35:57:59.40:56.44:57:59.23:47:49.35:51:52.39:54:56.42:57:56.25:52.32:54:56.37:44.40:45:47.20:49:47.32:45:47.35:52:51.39:52:49.21:52.33:51:49.37:47.40:45:47.28:45:44.32:45:47.35:49:51.40:52:49.21:52.33:51:52.37:51.40:52:51.23:49:51.35:52:54.39:56:57.42:59:59.28:56.35:57:59.40:56.44:57:59.23:51:49.35:51:52.39:54:56.42:57:56.25:52.32:54:56.37:44.40:45:47.20:49:47.32:45:47.35:52:51.39:52:49.21:52.33:51:49.37:47.40:45:47.28:45:44.32:45:47.35:49:51.40:52:49.21:52.33:51:52.37:51.40:52:51.23:49:51.35:52:54.39:56:57.42:59:59.28:56.35:57:59.40:56.44:57:59.23:51:49.35:51:52.39:54:56.42:57:56.25:52.32:54:56.37:44.40:45:47.20:49:47.32:45:47.35:52:51.39:52:49.21:52.33:51:49.37:47.40:45:47.28:45:44.32:45:47.35:49:51.40:52:49.21:52.33:51:52.37:51.40:52:51.23:49:51.35:52:54.39:56:57.42:59:56.28:52.35:54:56.40:54.44:52:54.23:51:52.30:54:56.35:54:52.39:51:52.25:49.32:51:52.37:40.40:42:44.20:45:44.32:42:44.35:52:51.39:52:49.21:52.33:51:49.37:47.40:45:47.28:45:44.32:45:47.35:49:51.40:52:49.21:52.33:51:52.37:51.40:49:51.23:52:54.35:52:51.39:52:49.42:51:52.28"

#define SOUNDPLAY_TXT_YuDeYinJi @"43:48:50:50.24:52.31:52.38:31:36:52:48:50:52:50.28:55.35:48.43:35:40:55:55:57:59:59.33:60.40:60.47:40:48:62:64.52:62:60:59.31:40:47.43:40:52.43:60:59:55:55.29:57.36:57.43:36:41:57:55:53:53.28:55.36:55.40:36:48.40:48:50:52.36:53.33:53.38:33:36:55:53:52.19:26:36:26:50.35:43:48:50:50.12:52.19:52.28:19:26:19:52.24:48:50.19:52:50.16:55.23:55.31:23:28:23:55.31:55:57:59:59.9:60.16:60.24:16:23:62.16:64.21:62:60.16:59.7:16:23:16:59.19:60:59:55:55.17:57.24:57.29:24:33:24:57.29:55.24:53:53.16:55.24:55.31:24:28:24:55.31:48.16:50:52.14:53.21:24:45:48.19:26:47.31:19:48.12"
//
#define SOUNDPLAY_TXT_MoSiKe @"45:48:52:48:50:48:47:52:50:45:48:52:55:55:57:55:53:52:54:56:59:57:52:47:45:52:50:53:55:53:52:50:48:52:50:45:54:56:59:57:52:47:45:52:50:53:55:53:52:50:48:52:50:45:45:57"

#define SOUNDPLAY_TXT_YEdeGangQingQu5 @"52:54:55:59:64.24:31:38:40:52.43:54:55:59:64.26:33:40:42:69.45:67:66:67:64.28:35:38:40:43:28:35:38:40:52.43:54:55:59:64.24:31:38:40:52.43:54:55:59:64.26:33:40:42:69.45:67:66:67:64.28:35:38:43:47:28:35:38:40:59.43:62:64:71:69.24:31:38:71.40:69.43:71:69:67:69.26:33:40:42:69.45:71:74:71:62.23:30:35:59.38:62.42:59:62:69:67.28:35:38:40:52.43:54:55:59:64.24:31:38:71.40:71.64.43:69:71:69:66.26:33:40:42:69.45:67:66:67:64.28:35:38:43:47:35:38:43:55.38:35:38:40:52.43:54:55:59:64.24:31:38:40:52.43:54:55:59:64.26:34:40:42:69.45:67:69:67:64.28:35:38:43:47:35:38:43:55.28:35:38:40:52:43:54:55:64.24:31:38:40:52.43:54:55:59:64.26:33:40:42:69.45:67:66:67:64.28:35:38:43:47:35:38:43:55.28:35:38:50:59.43:62.40:64.36:71:69.24:31:38:71.40:69.43:71.40:69.36:67:69.26:33:40:42:69.45:71.42:74.38:71:62.23:30:35:59.38:62.42:59:62:69:67.28:35:38:40:53.43:57:59:64.55:64.55.24:31:38:71.40:71.64.43:69.40:71.36:69:66.26:33:43:69.45:67:66:67:64.28:35:38:43:47:28:35:38:40:67.43:69:71:76.67:76.67.24:31:38:40:67.43:69.40:71.36:76.67:76.67.26:33:40:42:67.45:69:71:79.77:76.67.28:35:38:43:47:35:38:43:55.28:35:38:40:55.43:57:59:64.55:64.55.24:31.38:40:55.43:57.40:59.36:64.55:64.55.26:33:40:42:71.45:69:71:69:71.28:35:38:43:47:35:38:43:59.31:38:40:38:52.43:54.38:55.43:59:64.55.24:31:38:71.64.40:71.64.43:69.40:71.36:74:69.26:33:40:42:69.45:71.42:74.38:71:62.23:30:35:59.38:62.42:59:62:69:67.28:35:38:40:55.43:57:59:64:64.24:31:38:71.40:71.64.43:69:71:69:66.26:33:40:42:69.45:67:66:67:64.28:35:38:43:47:35:38:43:28.55:35:38:40:52.43:54:55:59:64.55.24:31:38:71.64.40:71.64.43:69:71:74:69.24:28:33:40:42:69.45:67:66:67:64.28:35:38:43:47:52:57:76.38.35.28"


@interface SoundPlay : NSObject
{
    int _musicScoreSign;
}

+ (id)sharedInstance;

- (void)playSoundKeytoneByMusicScore:(PianoMusic)key;

@property (nonatomic, retain) NSDate *_prePlayDate;

@end