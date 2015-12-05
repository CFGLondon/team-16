//
//  RecipientVC.m
//  ageUK
//
//  Created by Tsvetan Zhivkov on 05/12/2015.
//  Copyright © 2015 TEAM16. All rights reserved.
//

#import "RecipientVC.h"
#import "SaveRecipient.h"

@interface RecipientVC ()

@property (retain, nonatomic) SaveRecipient *saveRecData;
@property (weak, nonatomic) IBOutlet UITextField *firstTextBox;
@property (weak, nonatomic) IBOutlet UITextField *lastTextBox;
@property (weak, nonatomic) IBOutlet UITextField *postTextBox;
@property (weak, nonatomic) IBOutlet UITextField *interestTextBox;
@property (weak, nonatomic) IBOutlet UITextField *availabilityTextBox;
@property (weak, nonatomic) IBOutlet UITextField *genderTextBox;
@property (weak, nonatomic) IBOutlet UITextField *prefTextBox;
- (IBAction)saveButton:(id)sender;

@end

@implementation RecipientVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Recipient Registration";
    self.saveRecData = [[SaveRecipient alloc] init];
    self.saveRecData.dataDic = [[NSMutableDictionary alloc] init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButton:(id)sender {
    NSString *firstname = self.firstTextBox.text;
    NSString *lastname = self.lastTextBox.text;
    NSString *postcode = self.postTextBox.text;
    NSString *interest = self.interestTextBox.text;
    NSString *availability = self.availabilityTextBox.text;
    NSString *gender = self.genderTextBox.text;
    NSString *pref = self.prefTextBox.text;
    NSDictionary *tempDic = [NSDictionary dictionaryWithObjectsAndKeys:
                             firstname, @"firstname",
                             lastname, @"lastname",
                             postcode, @"postcode",
                             interest, @"interest",
                             availability, @"availability",
                             gender, @"gender",
                             pref, @"preference", nil];
    [self.saveRecData.dataDic setObject:tempDic forKey:[NSString stringWithFormat:self.saveRecData.dataDic]];
    [self.saveRecData saveRecipient];
    NSLog(@"Data Dic %i", [self.saveRecData.dataDic count]);
    [self.saveRecData loadRecipient];
}
@end
