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
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("셀이 선택됨")

        // Configure the view for the selected state
    }
    
}
