//
//  ViewController.swift
//  Calculator Homework
//
//  Created by Consultant on 8/19/22.
//

//TODO: and bugs:
//clear buffer if a num key pressed without another sign
//Make work with decimal
//Make % work
//make sign work

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Display: UITextField!
    
    @IBOutlet weak var Clear: UIButton!
    @IBOutlet weak var Sign: UIButton!
    @IBOutlet weak var Percent: UIButton!
    @IBOutlet weak var Divide: UIButton!
    
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    @IBOutlet weak var Times: UIButton!
    
    @IBOutlet weak var Four: UIButton!
    @IBOutlet weak var Five: UIButton!
    @IBOutlet weak var Six: UIButton!
    @IBOutlet weak var Minus: UIButton!
    
    @IBOutlet weak var One: UIButton!
    @IBOutlet weak var Two: UIButton!
    @IBOutlet weak var Three: UIButton!
    @IBOutlet weak var Plus: UIButton!
    
    @IBOutlet weak var Zero: UIButton!
    @IBOutlet weak var Dot: UIButton!
    @IBOutlet weak var Equals: UIButton!
    
    var operationQueue = Stack<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Display.text = ""
    }

    @IBAction func clickButton(_ sender: UIButton) {
        //Operations get pushed to stack then the
        //stack gets examined for possible operations
        operationQueue.push(sender.titleLabel?.text ?? "")
        processKey()
        
        
        /*switch sender {
            case One:
            Display.text = "One"
            case Two:
                print("Two")
            default:
                print("Unknown key pressed")
            }*/
    }
    
    func processKey()
    {
        //Append current operation to screen
        //Display.text?.append( operationQueue.peek())
        
        switch operationQueue.peek()
        {
        case "A/C":
            //print("clear")
            //Clear queue and screen
            operationQueue = Stack<String>()
            Display.text = ""
            
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
            Display.text?.append( operationQueue.peek())
            //do nothing
            //print("num")
            
        case "+", "-", "/", "*":
            Display.text?.append( operationQueue.peek())
            //do nothing
            //print("sign")
            
        case "=":
            //remove = from queue
            operationQueue.pop()
            let result = compute()
            if result == -1
            {
                Display.text = String("Error")
            }
            else{
                Display.text = String(result)
            }
            
        default:
            print("default")
        }
    }
    
    func compute() -> Int
    {
        var operand1 = ""
        var operand2 = ""
        var operation = ""
        var looptmp = -1
        
        repeat {
            //Gaurd for empty queue
            if operationQueue.count() == 0
            {
                break
            }
            looptmp = Int(operationQueue.peek()) ?? -1
            //if the current op is not a number
            if looptmp == -1
            {
                //non sign operations already delt with
                operation = operationQueue.pop()
            }
            else
            {
                //We have a valid number, decide which operand
                //Operands are backwards because of the stack
                if operation == ""
                {
                    operand2.append(operationQueue.pop())
                }
                else
                {
                    operand1.append(operationQueue.pop())
                }
            }
        }while true
        //print("operand1 \(operand1)")
        //print("operand2 \(operand2)")
        var result:Float = -1
        
        //validate operands
        if operand1 == "" || operand2 == ""
        {
            return -1
        }
           

        //compute
        switch operation{
        case "+":
            result = Fl(operand1)! + Int(operand2)!
        case "-":
            result = Int(operand1)! - Int(operand2)!
        case "*":
            result = Int(operand1)! * Int(operand2)!
        case "/":
            result = Int(operand1)! / Int(operand2)!
        default:
            //different error than initialized value -1
            result = -2
        }
        
        operationQueue.push(String(result))
        return result
    }
    
}

