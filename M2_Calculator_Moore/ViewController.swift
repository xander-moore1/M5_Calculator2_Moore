//
//  ViewController.swift
//  M2_Calculator_Moore
//
//  Created by Moore, Xander J. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var operandTextFieldA: UITextField!
    @IBOutlet weak var operandTextFieldB: UITextField!
    @IBOutlet weak var operatorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func operatorPressed(_ sender: Any) {
        let actionSheet = UIAlertController(title:nil, message:nil, preferredStyle: .alert);
        
        let plusAction = UIAlertAction(title: "+", style: .default) {_ in
            self.operatorButton.titleLabel?.text = "+";
        }
        
        actionSheet.addAction(plusAction);
        
        let minusAction = UIAlertAction(title: "-", style: .default) {_ in
            self.operatorButton.titleLabel?.text = "-";
        }
        
        actionSheet.addAction(minusAction);
        
        let timesAction = UIAlertAction(title: "*", style: .default) {_ in
            self.operatorButton.titleLabel?.text = "*";
        }
        
        actionSheet.addAction(timesAction);
        
        let divideAction = UIAlertAction(title: "/", style: .default) {_ in
            self.operatorButton.titleLabel?.text = "/";
        }
        
        actionSheet.addAction(divideAction);
        
        self.present(actionSheet, animated: true);
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let op1 = Int(operandTextFieldA.text!);
        let op2 = Int(operandTextFieldB.text!);
        let op = operatorButton.titleLabel?.text;
        
        if (op == "+") {
            let result = op1! + op2!;
            resultLabel.text = "\(result)";
        }
        else if (op == "-") {
            let result = op1! - op2!;
            resultLabel.text = "\(result)";
        }
        else if (op == "*") {
            let result = op1! * op2!;
            resultLabel.text = "\(result)";
        }
        else if (op == "/") {
            let result = op1! / op2!;
            resultLabel.text = "\(result)";
        }
        else {
            resultLabel.text = "Invalid operator";
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

