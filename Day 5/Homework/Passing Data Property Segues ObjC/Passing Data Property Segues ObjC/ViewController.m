//
//  ViewController.m
//  Passing Data Property Segues ObjC
//
//  Created by Consultant on 8/24/22.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//@IBAction func myButton(_ sender: Any) {
//    self.performSegue(withIdentifier: "mySegue", sender: self)
//}
//
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let segueDestination = segue.destination as! ViewController2
//        segueDestination.passTextSegue = "Hello World"
//    }

- (IBAction)myButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //have to #import
    ViewController2 *segueDestination = [segue destinationViewController];
    segueDestination.passTextSegue  = @"Hello World";
}

@end
