//
//  MenuViewController.m
//  RockFolio
//
//  Created by Caroline Van Velthoven on 11/05/14.
//  Copyright (c) 2014 Caroline Van Velthoven. All rights reserved.
//

#import "MenuViewController.h"
#import "SWRevealViewController.h"
#import "MenuModel.h"
#import "HomeViewController.h"
#import "VenuesViewController.h"
#import "AboutViewController.h"
#import "RataplanViewController.h"
#import "TrixViewController.h"
#import "PetrolViewController.h"
#import "ArenbergViewController.h"
#import "ABViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //set self as the data source and delegate for the table view
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //fetch the menu items
    self.menuItems = [[[MenuModel alloc] init] getMenuItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table View Delegate Methods

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}

//set height of rows to 60
- (float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 61.5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //retrieve cell
    NSString *cellIdentifier = @"MenuItemCell";
    UITableViewCell *menuCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
   
    //get menuitem that it's asking for
    MenuItem *item = self.menuItems[indexPath.row];
    
    //get image view
    UIImageView *iconImageView = (UIImageView *) [menuCell viewWithTag:2];
    UILabel *menuItemTitle = (UILabel *) [menuCell viewWithTag:1];
    
    //set menu item text and icon
    menuItemTitle.text = item.menuTitle;
    iconImageView.image = [UIImage imageNamed:item.menuIcon];
    
    return menuCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //check which item was tapped
    MenuItem *item = self.menuItems[indexPath.row];
    
    if (item.screenType == ScreentypeHome)
    {
        //go to Home
        HomeViewController *homeView = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:homeView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeVenues)
    {
        //go to Venues
        VenuesViewController *venuesView = [self.storyboard instantiateViewControllerWithIdentifier:@"VenuesViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:venuesView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeRataplan)
    {
        //go to Rataplan
        RataplanViewController *rataplanView = [self.storyboard instantiateViewControllerWithIdentifier:@"RataplanViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:rataplanView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeTrix)
    {
        //go to Trix
        TrixViewController *trixView = [self.storyboard instantiateViewControllerWithIdentifier:@"TrixViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:trixView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypePetrol)
    {
        //go to Petrol
        PetrolViewController *petrolView = [self.storyboard instantiateViewControllerWithIdentifier:@"PetrolViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:petrolView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeArenberg)
    {
        //go to Arenberg
        ArenbergViewController *arenbergView = [self.storyboard instantiateViewControllerWithIdentifier:@"ArenbergViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:arenbergView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeAB)
    {
        //go to AB
        ABViewController *abView = [self.storyboard instantiateViewControllerWithIdentifier:@"ABViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:abView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    else if (item.screenType == ScreentypeAbout)
    {
        //go to About
        AboutViewController *aboutView = [self.storyboard instantiateViewControllerWithIdentifier:@"AboutViewController"];
        [(UINavigationController *)self.revealViewController.frontViewController pushViewController:aboutView animated:YES];
        
        //slide the menu back
        [self.revealViewController revealToggleAnimated:YES];
    }
    
    
    /*switch (item.screenType) {
        case ScreentypeHome:
            //go to home
            [self performSegueWithIdentifier:@"HomeSegue" sender:self];
            break;
        
        case ScreentypeVenues:
            //go to venues
            [self performSegueWithIdentifier:@"VenuesSegue" sender:self];
            break;
            
        case ScreentypeRataplan:
            //go to venues
            [self performSegueWithIdentifier:@"RataplanSegue" sender:self];
            break;
            
        case ScreentypeTrix:
            //go to venues
            [self performSegueWithIdentifier:@"TrixSegue" sender:self];
            break;
            
        case ScreentypePetrol:
            //go to venues
            [self performSegueWithIdentifier:@"PetrolSegue" sender:self];
            break;
            
        case ScreentypeArenberg:
            //go to venues
            [self performSegueWithIdentifier:@"ArenbergSegue" sender:self];
            break;
            
        case ScreentypeAB:
            //go to venues
            [self performSegueWithIdentifier:@"ABSegue" sender:self];
            break;
        
        case ScreentypeAbout:
            //go to abouot
            [self performSegueWithIdentifier:@"AboutSegue" sender:self];
            break;
            
        default:
            break;
    } */
        
}

#pragma Segue Methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //set the front viewcontroller to be the destination one
    [self.revealViewController setFrontViewController:segue.destinationViewController];
    
    //slide the front viewcontroller back into place
    [self.revealViewController revealToggleAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
