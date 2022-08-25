//
//  ViewController2.m
//  Passing Data Property Segues ObjC
//
//  Created by Consultant on 8/24/22.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
//passTextSegue defined in header
@end

@implementation ViewController2

//var passTextSegue = ""
//@IBOutlet weak var myLabel: UILabel!
//override func viewDidLoad() {
//    myLabel.text = passTextSegue
//    super.viewDidLoad()
//}



- (void)viewDidLoad {
    
    [super viewDidLoad];
    _myLabel.text = _passTextSegue;
    // Do any additional setup after loading the view.
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
