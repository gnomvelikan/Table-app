//
//  ViewController.h
//  JSON-iOS
//
//  Created by Nikolay on 22/11/2016.
//  Copyright © 2016 GnomVelikan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *people;

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath;


@end

