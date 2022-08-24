//
//  ViewController.m
//  Autolayout Homework Objective C
//
//  Created by Consultant on 8/23/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//brackets are simile of dot syntax
//foo = [myObject backgroundColor];
//foo = myObject.backgroundColor;

//pass message (call func) by :
//[dateFormatter setDateFormat:@"MM-dd-yyyy"]
//dateFormatter.setDateFormat(@"MM-dd-yyyy")

//strings:
//NSString* flavor = @"Chocolate"
//@"Chocolate" is just a shortcut to create an NSString instance. You could also use:
//[[NSString alloc] initWithUTF8String:"Chocolate"];

- (void)viewDidLoad {
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM-dd-yyyy"];
    
    //CGRect frame = CGRectMake(40, 100, 200, 21);
    
    //Stack View
    UIStackView *stackView = [[UIStackView alloc] init];
    
    stackView.axis = UILayoutConstraintAxisVertical;
    stackView.distribution = UIStackViewDistributionEqualSpacing;
    stackView.alignment = UIStackViewAlignmentCenter;
    stackView.spacing = 30;
    stackView.translatesAutoresizingMaskIntoConstraints = false;

    
    for (int i=0;i<5;i++)
    {
        UILabel *label = [[UILabel alloc] init];
        //Can't concat strings. immutable.
        [label setText: [NSString stringWithFormat:@"Today is: %@", [dateFormatter stringFromDate:[NSDate date]]]];
        [label setBackgroundColor:[UIColor clearColor]];
        [label setTextColor:[UIColor redColor]];
        //strings start with at. put f on float
        [label setFont:[UIFont fontWithName:@"Veranda" size:18.0f]];
        [label setShadowColor:[UIColor darkGrayColor]];
        
        UITapGestureRecognizer* gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userTappedOnLink:)];
        //let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
        
        //label.isUserInteractionEnabled = true
        [label setUserInteractionEnabled:YES];
        [label addGestureRecognizer:gesture];
        label.tag = i;
        
        //[self.view addSubview:label];
        [stackView addArrangedSubview:label];
    }
    
    [self.view addSubview:stackView];
    
    
    //Layout for Stack View
    [stackView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
    [stackView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = true;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)userTappedOnLink:(UIGestureRecognizer*)gestureRecognizer
{
    printf("Ckicked on label\n");
    UIView *view = gestureRecognizer.view;
        switch (view.tag) {
            case 0:
                printf("0\n");
                break;
            case 1:
                printf("1\n");
                break;
            case 2:
                printf("2\n");
                break;
            case 3:
                printf("3\n");
                break;
            case 4:
                printf("4\n");
                break;
            default:
                break;
        }
}

@end
