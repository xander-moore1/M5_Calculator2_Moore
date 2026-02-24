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
        //let op1 = Int(operandTextFieldA.text!);
        //let op2 = Int(operandTextFieldB.text!);
        //let op = operatorButton.titleLabel?.text;
        
        guard let op1 = operandTextFieldA.text, let op1 = Int(op1) else {
            let alert = UIAlertController(title: "Invalid input", message: "Please enter valid numbers", preferredStyle: .alert);
            let okAction = UIAlertAction(title: "OK", style: .default);
            alert.addAction(okAction);
            present(alert, animated: true);
            return;
        }
        
        guard let op2 = operandTextFieldB.text, let op2 = Int(op2) else {
            let alert = UIAlertController(title: "Invalid input", message: "Please enter valid numbers", preferredStyle: .alert);
            let okAction = UIAlertAction(title: "OK", style: .default);
            alert.addAction(okAction);
            present(alert, animated: true);
            return;
        }
        
        guard let op = operatorButton.titleLabel?.text else {
            return;
        }
        
        var result : Int? = nil;
        
        switch op {
        case "+":
            result = op1 + op2;
            break;
        case "-":
            result = op1 - op2;
            break;
        case "*":
            result = op1 * op2;
            break;
        case "/":
            result = op1 / op2;
            break;
        default:
            let alert = UIAlertController(title: "Invalid input", message: "Please select an operator.", preferredStyle: .alert);
            let okAction = UIAlertAction(title: "OK", style: .default);
            alert.addAction(okAction);
            present(alert, animated: true);
            break;
        }
        
        guard let result = result else {
            return;
        }
        resultLabel.text = "\(result)";
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

