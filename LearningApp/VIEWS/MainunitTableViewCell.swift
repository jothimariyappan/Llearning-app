//
//  MainunitTableViewCell.swift
//  LearningApp
//
//  Created by Jo on 07/03/23.
//

import UIKit
import MBCircularProgressBar

class MainunitTableViewCell: UITableViewCell {
    
    @IBOutlet var Viewbase: UIView!    
    @IBOutlet var lblindex: UILabel!
    @IBOutlet var lblsubhead: UILabel!

   
    @IBOutlet var Progressview: MBCircularProgressBarView!
    override func awakeFromNib() {
        super.awakeFromNib()

        Progressview.maxValue = 100
        Progressview.progressAngle = 100
        Progressview.progressColor = .white
        Progressview.progressLineWidth = 2
        Progressview.fontColor = .white
        Progressview.valueFontSize = 15
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
