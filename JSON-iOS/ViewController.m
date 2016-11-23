//
//  ViewController.m
//  JSON-iOS
//
//  Created by Nikolay on 22/11/2016.
//  Copyright © 2016 GnomVelikan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import <UIKit/UIKit.h>
#import "Model.h"



@interface ViewController ()

@end



static NSString* CellIdentifier = @"CellTableIdentifier";


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  Do any additional setup after loading the view, typically from a nib.
    
    _people = @[
                @{@"Name" : @"Jeff", @"Weight" : @"144"},
                @{@"Name" : @"Bob", @"Weight" : @"144"},
                @{@"Name" : @"Mark", @"Weight" : @"144"},
                @{@"Name" : @"Nick", @"Weight" : @"144"},
                @{@"Name" : @"Stan", @"Weight" : @"144"}
                ];
    
    UITableView* tableView = (id) [self.view viewWithTag:1];
    [tableView registerClass:[CustomCell class] forCellReuseIdentifier:CellIdentifier];
    

}


//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

   
    
    
- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return self.people.count;
}
    
- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier];
        NSDictionary *rowData = self.people[indexPath.row];
        cell.name = rowData [@"Name"];
        cell.weight = rowData[@"Weight"];
        return cell;
        

    

}

@end
