//
//  ViewController.m
//  UISecondWeek
//
//  Created by OPS on 11/4/19.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "ViewController.h"
#import "TableViewTestCell.h"
#import "ViewControllerDetails.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *tableData;
NSMutableArray *tableNumber;
NSString *nameSelected;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.TableViewTest registerNib:[UINib nibWithNibName:@"TableViewTestCell" bundle:nil] forCellReuseIdentifier:@"FirstTableCell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewTestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FirstTableCell"];
    cell.label.textColor = UIColor.whiteColor;
    if ((indexPath.row + 1) % 2 == 0) {
        cell.label.text = @"EVEN";
        cell.backgroundColor = UIColor.blueColor;
    } else {
        cell.label.text = @"ODD";
        cell.backgroundColor = UIColor.redColor;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewTestCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    nameSelected = cell.label.text;
    [self performSegueWithIdentifier:@"TableToView" sender:nil];
    [_TableViewTest deselectRowAtIndexPath:indexPath animated:true];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"TableToView"]) {
        ViewControllerDetails *vcDetails = [segue destinationViewController];
        vcDetails.contactName = nameSelected;
    }
}
@end
