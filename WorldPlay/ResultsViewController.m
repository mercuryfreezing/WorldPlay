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



    NSString *madLibString = [NSString stringWithFormat:@"%@, %@ %@ %@ %@ %@ %@ %@", @"One day" , self.name , @"was learning how to be"  ,self.adjective , @"when his", self.noun, @"took a beating and his girl friend got very", self.verb];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:madLibString];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.name]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.adjective]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.verb]];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0] range:[attributedString.string rangeOfString:self.noun]];

    self.resultsTextView.attributedText = attributedString;


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
