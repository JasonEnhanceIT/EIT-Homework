//
//  ViewController.m
//  Passing Data Property ObjC
//
//  Created by Consultant on 8/24/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//@IBAction func onButtonTap() {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "vc2") as! ViewController2
//        vc.passText = "Hello World"
//
//        present(vc, animated: true, completion: nil)
//    }

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onButtonTap:(id)sender {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"vc2"];
    UIStoryboard *storyboard = [UIStoryboard ViewController2:bundle:nil];
    GCHConnectViewController* gchCVC = [storyboard instantiateViewControllerWithIdentifier:@"vc2"];
}

@end
