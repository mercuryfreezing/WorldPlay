//
//  EnterAdjectiveViewController.m
//  WorldPlay
//
//  Created by roshan on 30/09/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterNounViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    


    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *) toNounSegue sender:(id)sender{

    if([self.adjectiveTextField.text length]==0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    EnterNounViewController *nounViewCountroller = segue.destinationViewController;
    nounViewCountroller.adjective = self.adjectiveTextField.text;
    nounViewCountroller.name = self.name;

//    ResultsViewController *resultsViewController = segue.destinationViewController;
//    resultsViewController.adjective = self.adjectiveTextField.text;
//    resultsViewController.name = self.name;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
