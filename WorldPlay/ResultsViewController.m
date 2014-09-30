//
//  ResultsViewController.m
//  WorldPlay
//
//  Created by roshan on 30/09/2014.
//  Copyright (c) 2014 learningIOS. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"%@, %@, %@, %@, %@", @"One day" , self.name , @"was walking into Mobile Makers when he noticed how"  ,self.adjective ,@" his students were."];
    NSLog(@"%@, %@, %@", self.name, self.adjective, @"Hello");

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

@end
