//
//  EnterNounViewController.m
//  WorldPlay
//
//  Created by roshan on 01/10/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "EnterNounViewController.h"
#import "EnterVerbViewController.h"

@interface EnterNounViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nounField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *) toVerbSegue sender:(id)sender{

    if([self.nounField.text length]==0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    EnterVerbViewController *verbViewController = segue.destinationViewController;
    verbViewController.noun = self.nounField.text;
    verbViewController.adjective = self.adjective;
    verbViewController.name = self.name;
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
