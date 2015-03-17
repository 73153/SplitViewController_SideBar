//
//  MenuViewControllerRight.m
//  JanaMenu
//
//  Created by JVN on 23/01/2015.
//  Copyright (c) 2015 jana.SideMenu. All rights reserved.
//

#import "MenuViewControllerRight.h"

@interface MenuViewControllerRight ()

@end

@implementation MenuViewControllerRight

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)homeSelect:(id)sender
{
    UINavigationController *navigationController = (UINavigationController *)self.sideMenuViewController.contentViewController;
    [self.sideMenuViewController hideMenuViewController];
    [navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"homeViewController"] animated:YES];
}

- (IBAction)viewController1Select:(id)sender
{
    UINavigationController *navigationController = (UINavigationController *)self.sideMenuViewController.contentViewController;
    [self.sideMenuViewController hideMenuViewController];
    [navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"viewController1"] animated:YES];
}

- (IBAction)viewController2Select:(id)sender
{
    UINavigationController *navigationController = (UINavigationController *)self.sideMenuViewController.contentViewController;
    [self.sideMenuViewController hideMenuViewController];
    [navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"viewController2"] animated:YES];
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
