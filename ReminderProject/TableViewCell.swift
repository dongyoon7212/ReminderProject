//
//  TableViewCell.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableCellCount: UILabel!
    @IBOutlet weak var tableCellName: UILabel!
    @IBOutlet weak var tableCellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .white
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
