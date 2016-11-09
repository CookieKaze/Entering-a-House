//
//  ViewController.m
//  Entering a House
//
//  Created by Erin Luu on 2016-11-09.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UINavigationItem * backButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *btnCancel = [[UIBarButtonItem alloc] initWithTitle:@"Restart"
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(goToDoor)];
    self.navigationItem.rightBarButtonItem = btnCancel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) goToDoor {
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"door"];
    
    [self.navigationController presentViewController:vc animated:YES completion:nil];
    
}
@end
