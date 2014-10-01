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
    self.resultsTextView.text = [NSString stringWithFormat:@"%@, %@ %@ %@ %@ %@ %@ %@", @"One day" , self.name , @"was learning how to be"  ,self.adjective , @"when his", self.noun, @"took a beating and his girl friend got very", self.verb];
    
    NSLog(@"%@, %@, %@ ,%@, %@", self.name, self.adjective, self.noun, self.verb, @"Hi");

    NSMutableAttributedString *displayText = [[NSMutableAttributedString alloc] initWithString: self.resultsTextView.text];
    [displayText beginEditing];
    [displayText beginEditing];

    [displayText addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-Bold" size:12.0]
                   range:NSMakeRange(20, 3)];
    
    [displayText endEditing];

    NSLog(@"%@", displayText);


    //Not sure how to assign resultsTextView to displayText

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
