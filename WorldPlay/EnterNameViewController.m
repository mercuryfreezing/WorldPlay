//
//  EnterNameViewController.m
//  WorldPlay
//
//  Created by roshan on 30/09/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController





- (void)viewDidLoad {
    [super viewDidLoad];


    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *) toAppSegue sender:(id)sender{

    if([self.nameTextField.text length]==0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    EnterAdjectiveViewController *adjectiveViewController = segue.destinationViewController;
    adjectiveViewController.name = self.nameTextField.text;


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
