//
//  SatScoresTableViewCell.swift
//  20190416-AnveshReddy-NYCSchools
//
//  Created by Anvesh on 4/17/19.
//  Copyright © 2019 Anvesh. All rights reserved.
//

import UIKit

class SatScoresTableViewCell: UITableViewCell {
    
    @IBOutlet var hsNameLbl: UILabel!
    @IBOutlet var satReadingAvgScoreLbl: UILabel!
    @IBOutlet var satMathAvgScoreLbl: UILabel!
    @IBOutlet var satWritingAvgScoreLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
