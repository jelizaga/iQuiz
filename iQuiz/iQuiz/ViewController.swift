//
//  ViewController.swift
//  iQuiz
//
//  Created by iGuest on 5/3/16.
//  Copyright © 2016 Joel Elizaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate, UITableViewDataSource, UITableViewDelegate  {
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // IBOutlets //////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////

    // Settings button.
    @IBOutlet weak var bttnSettings: UIToolbar!
    
    // UITableView of topics.
    @IBOutlet weak var tblviewTopics: UITableView!
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // Globals ////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    // Array of topic titles.
    let topicTitles = ["Marvel", "Math", "Science"]
    
    // Array of topic descriptions.
    let topicDescriptions = ["A quiz about Marvel comics.", "A quiz about mathematics.", "A quiz about science."]
    
    // Array of topic images.
    let topicImgs = [UIImage (named: "Marvel"), UIImage(named: "Math"), UIImage(named: "Science")]
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // Settings Alert /////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    // Alert displayed when the Settings button is pressed.
    @IBAction func showAlert(sender: AnyObject) {
        print("User has pressed the settings button.")
        let alert: UIAlertController = UIAlertController(title: "YOLO", message: "#SWAG", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // viewDidLoad ////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblviewTopics.delegate = self
        tblviewTopics.dataSource = self
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // didReceiveMemoryWarning ////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // tblviewTopics //////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    // The table has 1 section.
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // The table has as many rows per section as there are in topics in topicTitles.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicTitles.count
    }
    
    // Creates and configures cells to populate the topic tblviewTopics table view.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tblviewTopics.dequeueReusableCellWithIdentifier("TopicCell", forIndexPath: indexPath) as! TopicCellTableViewCell
        let row = indexPath.row
        cell.lblTitle.text = topicTitles[row]
        cell.lblDescription.text = topicDescriptions[row]
        return cell
    }
    
    // Action to take when the user selects a single row.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        print("User has selected quiz topic: \(topicTitles[row]).")
    }


}
