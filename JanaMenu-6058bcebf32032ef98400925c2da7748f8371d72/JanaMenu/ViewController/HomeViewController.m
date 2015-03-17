//
//  HomeViewController.m
//  JanaMenu
//
//  Created by JVN on 23/01/2015.
//  Copyright (c) 2015 jana.SideMenu. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController () <UIGestureRecognizerDelegate, RESideMenuDelegate>
{
    BOOL check_menu;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home";
    
    UIButton *menuButton = [[UIButton alloc] init];
    [menuButton setFrame:CGRectMake(0, 0, 21, 16)];
    [menuButton setBackgroundImage:[UIImage imageNamed:@"menu-icon"] forState:UIControlStateNormal];
    menuButton.showsTouchWhenHighlighted = YES;
    [menuButton addTarget:self action:@selector(menuAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *menuBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:menuButton];
    self.navigationItem.leftBarButtonItem = menuBarButtonItem;
    
    
    UIButton *menuButton1 = [[UIButton alloc] init];
    [menuButton1 setFrame:CGRectMake(0, 0, 21, 16)];
    [menuButton1 setBackgroundImage:[UIImage imageNamed:@"menu-icon"] forState:UIControlStateNormal];
    menuButton1.showsTouchWhenHighlighted = YES;
    [menuButton1 addTarget:self action:@selector(menuAction1) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *menuBarButtonItem1 = [[UIBarButtonItem alloc] initWithCustomView:menuButton1];
    self.navigationItem.rightBarButtonItem = menuBarButtonItem1;
}

- (void)menuAction
{
    [self.sideMenuViewController presentLeftMenuViewController];
}

- (void)menuAction1
{
    [self.sideMenuViewController presentRightMenuViewController];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
