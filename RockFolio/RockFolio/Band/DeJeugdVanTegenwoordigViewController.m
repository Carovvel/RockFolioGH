//
//  DeJeugdVanTegenwoordigViewController.m
//  RockFolio
//
//  Created by Caroline Van Velthoven on 16/05/14.
//  Copyright (c) 2014 Caroline Van Velthoven. All rights reserved.
//

#import "DeJeugdVanTegenwoordigViewController.h"
#import "SWRevealViewController.h"

@interface DeJeugdVanTegenwoordigViewController ()
{
     UIImageView *_bigImage;
}

@end

@implementation DeJeugdVanTegenwoordigViewController

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
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    //Photo 1
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo1Tapped:)];
    [self.jeugdPhoto1 addGestureRecognizer:tapGesture1];
    
    //Photo 2
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo2Tapped:)];
    [self.jeugdPhoto2 addGestureRecognizer:tapGesture2];
    
    //Photo 3
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo3Tapped:)];
    [self.jeugdPhoto3 addGestureRecognizer:tapGesture3];
    
    //Photo 4
    UITapGestureRecognizer *tapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo4Tapped:)];
    [self.jeugdPhoto4 addGestureRecognizer:tapGesture4];
    
    //Photo 5
    UITapGestureRecognizer *tapGesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo5Tapped:)];
    [self.jeugdPhoto5 addGestureRecognizer:tapGesture5];
    
    //Photo 6
    UITapGestureRecognizer *tapGesture6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo6Tapped:)];
    [self.jeugdPhoto6 addGestureRecognizer:tapGesture6];
    
    //Photo 7
    UITapGestureRecognizer *tapGesture7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo7Tapped:)];
    [self.jeugdPhoto7 addGestureRecognizer:tapGesture7];
    
    //Photo 8
    UITapGestureRecognizer *tapGesture8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo8Tapped:)];
    [self.jeugdPhoto8 addGestureRecognizer:tapGesture8];
}

- (void) photo1Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto1.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo2Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto2.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo3Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto3.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo4Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto4.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo5Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto5.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo6Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto6.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo7Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto7.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo8Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.jeugdPhoto8.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photoDismiss:(id)sender
{
    [_bigImage removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonTapped:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
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
