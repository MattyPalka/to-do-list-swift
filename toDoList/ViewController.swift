//
//  ViewController.swift
//  toDoList
//
//  Created by Mateusz Pałka on 13.06.2017.
//  Copyright © 2017 Mateusz Pałka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var textOutput: UITextView!
    
    var items:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButton(_ sender: Any) {
        if(textInput.text! == ""){
            return
        }
        items.append(textInput.text!)
        textOutput.text = ""
        for item in items{
        textOutput.text.append("\(item)\n")
        }
        textInput.text = ""
        textInput.resignFirstResponder()
        
    }

}

