//
//  EnterVerbViewController.m
//  WorldPlay
//
//  Created by roshan on 01/10/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "ResultsViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *) toResultsSegue sender:(id)sender{

    if([self.verbField.text length]==0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    ResultsViewController *resultsViewController = segue.destinationViewController;
    resultsViewController.verb = self.verbField.text;
    resultsViewController.noun = self.noun;
    resultsViewController.adjective = self.adjective;
    resultsViewController.name = self.name;
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
