//
//  ViewController.m
//  EcookDemo
//
//  Created by 陶冶明 on 2021/3/9.
//

#import "ViewController.h"
#import <EcookSDK/EcookSDKManager.h>
#import <EcookSDK/EcookHomeViewController.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [EcookSDKManager initWithConfig:@{@"appid":@"100602",@"appkey":@"29e1eb7f0710e44be02694e66f4e9272"}];
//    EcookSDKManager.intertitialAdPosId = @"9535af29514e548fe0";
//    EcookSDKManager.bannerAdPosId = @"9ca1e179e38ca5a35c";
//    EcookSDKManager.nativeAdPosId = @"e9eaffb6b9d97cd813";
}

- (IBAction)clickpresentButton:(id)sender {
    EcookHomeViewController *vc = [EcookHomeViewController new];
    vc.showBackButton = YES;
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    nvc.navigationBarHidden = YES;
    nvc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nvc animated:YES completion:nil];
}

- (IBAction)clickTabButton:(id)sender {
    UITabBarController *tc = [UITabBarController new];
    tc.modalPresentationStyle = UIModalPresentationFullScreen;
    
    UIViewController *fvc = [UIViewController new];
    fvc.view.backgroundColor = [UIColor whiteColor];
    fvc.tabBarItem.title = @"测试";
    
    EcookHomeViewController *evc = [EcookHomeViewController new];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:evc];
    nvc.navigationBarHidden = YES;
    nvc.tabBarItem.title = @"菜谱";
    nvc.hidesBottomBarWhenPushed = YES;
    
    tc.viewControllers = @[fvc, nvc];
    [self presentViewController:tc animated:YES completion:nil];
}

@end
