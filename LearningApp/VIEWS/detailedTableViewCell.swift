//
//  detailedTableViewCell.swift
//  LearningApp
//
//  Created by Jo on 07/03/23.
//

import UIKit

class detailedTableViewCell: UITableViewCell {
    
    
    @IBOutlet var lblchapter: UILabel!
    @IBOutlet var lblmark: UILabel!
    @IBOutlet var lbltitele: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
