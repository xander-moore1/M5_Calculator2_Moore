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
    
    var selectedOperator: Operator?;
    
    
    @IBAction func operatorPressed(_ sender: Any) {
        let actionSheet = UIAlertController(title:nil, message:nil, preferredStyle: .alert);
       
        let plusAction = UIAlertAction(title: "+", style: .default, handler: {_ in
            self.operatorButton.setTitle("+", for: .normal);
            self.selectedOperator = .add; });
        
        actionSheet.addAction(plusAction);
        
        let minusAction = UIAlertAction(title: "-", style: .default, handler: {_ in
            self.operatorButton.setTitle("-", for: .normal);
            self.selectedOperator = .subtract; });
        
        actionSheet.addAction(minusAction);
        
        let timesAction = UIAlertAction(title: "*", style: .default, handler: {_ in
            self.operatorButton.setTitle("*", for: .normal);
            self.selectedOperator = .multiply; });
        
        actionSheet.addAction(timesAction);
        
        let divideAction = UIAlertAction(title: "/", style: .default, handler: {_ in
            self.operatorButton.setTitle("/", for: .normal);
            self.selectedOperator = .divide; });
        
        actionSheet.addAction(divideAction);
        
        self.present(actionSheet, animated: true);
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        guard let op1 = operandTextFieldA.text, let a = Int(op1) else {
            let alert = UIAlertController(title: "Invalid input", message: "Please enter valid numbers", preferredStyle: .alert);
            let okAction = UIAlertAction(title: "OK", style: .default);
            alert.addAction(okAction);
            present(alert, animated: true);
            return;
        }
        
        guard let op2 = operandTextFieldB.text, let b = Int(op2) else {
            let alert = UIAlertController(title: "Invalid input", message: "Please enter valid numbers", preferredStyle: .alert);
            let okAction = UIAlertAction(title: "OK", style: .default);
            alert.addAction(okAction);
            present(alert, animated: true);
            return;
        }
        
        guard let op = selectedOperator else {
            return;
        }
        
        var result : Int? = nil;
        
        switch op {
        case .add:
            result = a + b;
            break;
        case .subtract:
            result = a - b;
            break;
        case .multiply:
            result = a * b;
            break;
        case .divide:
            result = a / b;
            break;
        }
        
        guard let result = result else {
            return;
        }
        resultLabel.text = "\(result)";
        
        if operandTextFieldA.isFirstResponder {
            operandTextFieldA.resignFirstResponder();
        }
        else {
            operandTextFieldB.resignFirstResponder();
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        operandTextFieldA.becomeFirstResponder();
    }
}

