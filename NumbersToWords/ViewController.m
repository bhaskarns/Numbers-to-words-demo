//
//  ViewController.m
//  NumbersToWords
//
//  Created by test on 4/5/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *inputValue;
@property (strong, nonatomic) IBOutlet UILabel *outputResult;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)convertNumberToWords:(id)sender {
    
//    NSString *str=self.inputValue.text;
//    NSLog(@"%@",str);
//    
//    int i=str.intValue;
//    
    NSNumberFormatter *formatter=[[NSNumberFormatter alloc]init];
    [formatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    
    NSString *str1=[formatter stringFromNumber:[NSNumber numberWithInt:self.inputValue.text.intValue]];
    //NSLog(@"%@",str);
    _outputResult.text=str1;
    
}

@end
