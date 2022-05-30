//
//  ScoreTableViewCell.swift
//  Checkers
//
//  Created by mac on 8.03.22.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {
    
    @IBOutlet weak var whiteName: UILabel!
    
    @IBOutlet weak var blackName: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageViewWinner: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        timeLabel.text =  UserDefaults.standard.object(forKey: "Timer") as? String
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
