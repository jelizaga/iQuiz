//
//  TopicCellTableViewCell.swift
//  iQuiz
//
//  Created by iGuest on 5/3/16.
//  Copyright © 2016 Joel Elizaga. All rights reserved.
//

import UIKit

class TopicCellTableViewCell: UITableViewCell {

    @IBOutlet weak var imgTopic: UIImageView!
    @IBOutlet weak var lblTopicTitle: UILabel!
    @IBOutlet weak var lblTopicDef: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
