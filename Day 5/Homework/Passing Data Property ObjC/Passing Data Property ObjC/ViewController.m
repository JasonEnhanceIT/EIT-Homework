//
//  ViewController.m
//  Passing Data Property ObjC
//
//  Created by Consultant on 8/24/22.
//

#import "ViewController.h"
#import "ViewController2.h"

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
    ViewController2 *vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"vc2"];
    vc2.passText = @"Hello World";
    //To call a func need self in brackets
    [self presentViewController:vc2 animated:YES completion:nil];
}

@end
