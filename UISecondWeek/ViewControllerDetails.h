//
//  ViewControllerDetails.h
//  UISecondWeek
//
//  Created by OPS on 11/4/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerDetails : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UIView *viewBackground;
@property (assign, nonatomic) NSString *contactName;

@end

NS_ASSUME_NONNULL_END
