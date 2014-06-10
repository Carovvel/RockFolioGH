//
//  TheSoundsViewController.m
//  RockFolio
//
//  Created by Caroline Van Velthoven on 16/05/14.
//  Copyright (c) 2014 Caroline Van Velthoven. All rights reserved.
//

#import "TheSoundsViewController.h"
#import "SWRevealViewController.h"

@interface TheSoundsViewController ()
{
    UIImageView *_bigImage;
}

@end

@implementation TheSoundsViewController

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
    [self.soundsPhoto1 addGestureRecognizer:tapGesture1];
    
    //Photo 2
    UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo2Tapped:)];
    [self.soundsPhoto2 addGestureRecognizer:tapGesture2];
    
    //Photo 3
    UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo3Tapped:)];
    [self.soundsPhoto3 addGestureRecognizer:tapGesture3];
    
    //Photo 4
    UITapGestureRecognizer *tapGesture4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo4Tapped:)];
    [self.soundsPhoto4 addGestureRecognizer:tapGesture4];
    
    //Photo 5
    UITapGestureRecognizer *tapGesture5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo5Tapped:)];
    [self.soundsPhoto5 addGestureRecognizer:tapGesture5];
    
    //Photo 6
    UITapGestureRecognizer *tapGesture6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo6Tapped:)];
    [self.soundsPhoto6 addGestureRecognizer:tapGesture6];
    
    //Photo 7
    UITapGestureRecognizer *tapGesture7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo7Tapped:)];
    [self.soundsPhoto7 addGestureRecognizer:tapGesture7];
    
    //Photo 8
    UITapGestureRecognizer *tapGesture8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photo8Tapped:)];
    [self.soundsPhoto8 addGestureRecognizer:tapGesture8];
}

- (void) photo1Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto1.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo2Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto2.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo3Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto3.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo4Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto4.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo5Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto5.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo6Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto6.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo7Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto7.image];
    _bigImage.frame = CGRectMake(0, 0, 320, 568);
    _bigImage.userInteractionEnabled = YES;
    [self.view addSubview:_bigImage];
    UITapGestureRecognizer *dismissGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoDismiss:)];
    [_bigImage addGestureRecognizer:dismissGesture];
}

- (void) photo8Tapped:(id)sender
{
    _bigImage = [[UIImageView alloc] initWithImage:self.soundsPhoto8.image];
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
