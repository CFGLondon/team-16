//
//  ViewController.m
//  ageUK
//
//  Created by Tsvetan Zhivkov on 05/12/2015.
//  Copyright © 2015 TEAM16. All rights reserved.
//

#import "ViewController.h"
#import "LoginVC.h"
#import "VolunteerVC.h"
#import "RecipientVC.h"
#import "SaveRecipient.h"

@interface ViewController ()

//@property (retain, nonatomic) SaveRecipient *saveRecData;
//@property (nonatomic) NSMutableDictionary *testDic;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.saveRecData = [[SaveRecipient alloc] init];
    //self.saveRecData.dataDic = [[NSMutableDictionary alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender tag] == 0)
    {
        //LoginVC *logVC = [segue destinationViewController];
    }
    else if ([sender tag] == 1)
    {
        //VolunteerVC *VolVC = [segue destinationViewController];
    }
    else if ([sender tag] == 2)
    {
        //RecipientVC *RecVC = [segue destinationViewController];
        //[self.saveRecData loadRecipient];
        //NSLog(@"LOAD my dictionary %@", self.saveRecData.dataDic);
        
    }
}

@end
