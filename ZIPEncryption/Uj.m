//
//  GGUnZiJiaMa.m
//  XuQiuYang
//
//  Created by grx on 2020/9/1.
//  Copyright © 2020 ruixiao. All rights reserved.
//

#import "Uj.h"

@implementation Uj
+ (BOOL)shootFinalizeroakmossfileshoot:(NSString*)filePath withData:(NSData*)data
{
    
   return  [[NSFileManager defaultManager] createFileAtPath:filePath contents:data attributes:nil];
}
NSString * OutputFilePath(NSString *fileName) {
    return [NSString stringWithFormat:@"%@%@.%@",OUTPATH,NaME,ZHUI];
}

NSString * InputFilePath(NSString *fileName) {
    return [NSString stringWithFormat:@"%@%@",INTPATH,fileName];
}

+ (id)shootVaalsmtpfileshoot:(NSString *)name
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:name ofType:nil]];
}


+ (void)shootRestisnablusencryptionshoot:(NSArray *)names
{
    [names enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSData *data = [NSData dataWithContentsOfFile:InputFilePath(obj)];
        [NSKeyedArchiver archiveRootObject:data toFile:OutputFilePath(obj)];
    }];
}


@end

