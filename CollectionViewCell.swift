//
//  CollectionViewCell.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellcount: UILabel!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

}
