//
//  MenuModel.m
//  RockFolio
//
//  Created by Caroline Van Velthoven on 11/05/14.
//  Copyright (c) 2014 Caroline Van Velthoven. All rights reserved.
//

#import "MenuModel.h"
#import "MenuItem.h"

@implementation MenuModel

-(NSArray *)getMenuItems
{
    NSMutableArray *menuItemArray = [[NSMutableArray alloc] init];
    
    MenuItem *item1 = [[MenuItem alloc] init];
    item1.menuTitle = @"HOME";
    item1.menuIcon = @"MainMenuicon";
    //enum defined in supporting files < prefix.pch
    item1.screenType = ScreentypeHome;
    [menuItemArray addObject:item1];
    
    MenuItem *item2 = [[MenuItem alloc] init];
    item2.menuTitle = @"VENUES";
    item2.menuIcon = @"MainMenuicon";
    item2.screenType = ScreentypeVenues;
    [menuItemArray addObject:item2];
    
    MenuItem *item3 = [[MenuItem alloc] init];
    item3.menuTitle = @"Rataplan";
    item3.menuIcon = @"SubMenuicon";
    [menuItemArray addObject:item3];
    
    MenuItem *item4 = [[MenuItem alloc] init];
    item4.menuTitle = @"Trix";
    item4.menuIcon = @"SubMenuicon";
    [menuItemArray addObject:item4];
    
    MenuItem *item5 = [[MenuItem alloc] init];
    item5.menuTitle = @"Petrol";
    item5.menuIcon = @"SubMenuicon";
    [menuItemArray addObject:item5];
    
    MenuItem *item6 = [[MenuItem alloc] init];
    item6.menuTitle = @"Arenberg";
    item6.menuIcon = @"SubMenuicon";
    [menuItemArray addObject:item6];
    
    MenuItem *item7 = [[MenuItem alloc] init];
    item7.menuTitle = @"AB";
    item7.menuIcon = @"SubMenuicon";
    [menuItemArray addObject:item7];
    
    MenuItem *item8 = [[MenuItem alloc] init];
    item8.menuTitle = @"ABOUT";
    item8.menuIcon = @"MainMenuicon";
    item8.screenType = ScreentypeAbout;
    [menuItemArray addObject:item8];
    
    return menuItemArray;
}

@end
