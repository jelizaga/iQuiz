//
//  ViewController.swift
//  iQuiz
//
//  Created by iGuest on 5/3/16.
//  Copyright © 2016 Joel Elizaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate, UITableViewDelegate  {

    // Settings button.
    @IBOutlet weak var bttnSettings: UIToolbar!
    @IBOutlet weak var tblviewTopics: UITableView!
    
    // Alert displayed when the Settings button is pressed.
    @IBAction func showAlert(sender: AnyObject) {
        let alert: UIAlertController = UIAlertController(title: "YOLO", message: "#SWAG", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

