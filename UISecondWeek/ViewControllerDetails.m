//
//  ViewControllerDetails.m
//  UISecondWeek
//
//  Created by OPS on 11/4/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewControllerDetails.h"

@interface ViewControllerDetails ()
@property (weak, nonatomic) IBOutlet UIButton *ButtonClose;

@end

@implementation ViewControllerDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    _NameLabel.textColor = UIColor.whiteColor;
    _NameLabel.text = _contactName;
    if ([_contactName isEqualToString:@"EVEN"]) {
        _viewBackground.backgroundColor = UIColor.blueColor;
    } else {
        _viewBackground.backgroundColor = UIColor.redColor;
    }
    // Do any additional setup after loading the view.
}

- (IBAction)OnButtonClose:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
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
