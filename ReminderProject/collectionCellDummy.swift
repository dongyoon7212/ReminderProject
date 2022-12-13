//
//  collectionCellDummy.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

struct collectionCell {
    let title: String
    let count: String
    var image: String
    let color: String
}

extension collectionCell {
    static var data = [
        collectionCell(title: "오늘", count: "0", image: "calendar.circle.fill", color: "setBlue"),
        collectionCell(title: "예정", count: "3", image: "calendar.circle.fill", color: "setRed"),
        collectionCell(title: "전체", count: "5", image: "tray.circle.fill", color: "setBlack"),
        collectionCell(title: "깃발 표시", count: "7", image: "flag.circle.fill", color: "setOrange"),
        collectionCell(title: "완료됨", count: "9", image: "checkmark.circle.fill", color: "setGray")
    ]
}
