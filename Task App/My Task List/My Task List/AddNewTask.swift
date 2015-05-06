//
//  SecondViewController.swift
//  My Task List
//
//  Created by Ryan Rudzitis on 2015-05-05.
//  Copyright (c) 2015 Ryan Rudzitis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        var alert: UIAlertView = UIAlertView()
        
        if(txtTask.text != "" && txtDesc.text != "") {
        
            taskMgr.addTask(txtTask.text, desc: txtDesc.text);
            self.view.endEditing(true) // hide keybaord
            txtTask.text = "" // clear the text boxes
            txtDesc.text = ""
            self.tabBarController?.selectedIndex = 1; // jumps to second tab
            for item in taskMgr.allTasks {
                println(item.name)
            }
            println("\n")
        } else {
            txtTask.text = "" // clear the text boxes
            txtDesc.text = ""
            
            alert.title = "ERROR"
            alert.message = "Invalid name or description"
            alert.addButtonWithTitle("Ok")
            alert.show()
        }
    }
    
    //iOS touch functions
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

