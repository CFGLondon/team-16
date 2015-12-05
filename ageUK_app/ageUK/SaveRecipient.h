//
//  SaveRecipient.h
//  ageUK
//
//  Created by Tsvetan Zhivkov on 05/12/2015.
//  Copyright © 2015 TEAM16. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaveRecipient : NSObject

@property (nonatomic) NSMutableDictionary *dataDic;
-(void)saveRecipient;
-(void)loadRecipient;

@end
