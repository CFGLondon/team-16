//
//  SaveRecipient.m
//  ageUK
//
//  Created by Tsvetan Zhivkov on 05/12/2015.
//  Copyright © 2015 TEAM16. All rights reserved.
//

#import "SaveRecipient.h"

@implementation SaveRecipient

-(void)saveRecipient
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirPath = [path objectAtIndex:0];
    NSString *filePath = [documentsDirPath stringByAppendingPathComponent:@"recipient.plist"];
    [self.dataDic writeToFile:filePath atomically:YES];
    NSLog(@"saved dic %@", [self.dataDic description]);
}
-(void)loadRecipient
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirPath = [path objectAtIndex:0];
    NSString *filePath = [documentsDirPath stringByAppendingPathComponent:@"recipient.plist"];
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        self.dataDic = [[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
        NSLog(@"load dic %@", [self.dataDic description]);
    }
}

@end
