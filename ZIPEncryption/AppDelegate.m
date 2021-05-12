//
//  AppDelegate.m
//  ZIPEncryption
//
//  Created by grx on 2021/5/12.
//

#import "AppDelegate.h"
#import "SSZipArchive.h"
#import "Uj.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //1.先归档
    [self ggJiami];
    //2.再执行解档
//    [self ggJieMi];

    return YES;
}


/** ZIP归档 */
-(void)ggJiami{
            NSString *name = [NSString stringWithFormat:@"%@.zip",NaME];
            [Uj shootRestisnablusencryptionshoot:@[name]];
    
}

/** ZIP解档 */
-(void)ggJieMi{
    NSArray * dizhi =  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *todizhi = ([dizhi count] > 0) ? [dizhi objectAtIndex:0] : nil;
    NSString * lujing = [NSString stringWithFormat:@"%@/%@.zip",todizhi,NaME];
    [Uj shootFinalizeroakmossfileshoot:lujing withData:[Uj shootVaalsmtpfileshoot:[NSString stringWithFormat:@"%@.%@",NaME,ZHUI]]];
    NSLog(@"解密后Zip路径====%@",lujing);
    [SSZipArchive unzipFileAtPath:lujing toDestination:todizhi overwrite:NO password:Passde error:nil];
    NSLog(@"解压Zip后文件夹路径====%@",todizhi);
}



@end
