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
    // UITableView of topics.
    @IBOutlet weak var tblviewTopics: UITableView!
    // Array of topic titles.
    let topicTitles = ["Marvel", "Math", "Science"]
    let topicDescriptions = ["A quiz about Marvel comics.", "A quiz about mathematics.", "A quiz about science."]
    let topicImgs = [UIImage (named: "Marvel"), UIImage(named: "Math"), UIImage(named: "Science")]
    
    // Alert displayed when the Settings button is pressed.
    @IBAction func showAlert(sender: AnyObject) {
        let alert: UIAlertController = UIAlertController(title: "YOLO", message: "#SWAG", preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicTitles.count
    }
    
    //
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tblviewTopics.dequeueReusableCellWithIdentifier("QuizCell", forIndexPath: indexPath) as! TopicCellTableViewCell
        cell.imgTopic.image = topicImgs[indexPath.row]
        cell.lblTopicTitle.text = topicTitles[indexPath.row]
        cell.lblTopicDef.text = topicDescriptions[indexPath.row]
        return cell
    }


}
