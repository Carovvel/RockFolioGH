//
//  MenuViewController.h
//  RockFolio
//
//  Created by Caroline Van Velthoven on 11/05/14.
//  Copyright (c) 2014 Caroline Van Velthoven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuModel.h"
#import "MenuItem.h"

@interface MenuViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) MenuModel *model;
@property (strong, nonatomic) NSArray *menuItems;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
