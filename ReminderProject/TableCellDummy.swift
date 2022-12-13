//
//  TableCellDummy.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

struct tableCell {
    let title: String
    var image: String
    let count: String
    let color: String
}

extension tableCell {
    static var data = [
        tableCell(title: "미리 알림", image: "list.bullet.circle.fill", count: "0", color: "setOrange"),
        tableCell(title: "크리스마스 알림", image: "list.bullet.circle.fill", count: "3", color: "setBlue"),
        tableCell(title: "시험 알림", image: "list.bullet.circle.fill", count: "5", color: "setRed"),
        tableCell(title: "면접 알림", image: "list.bullet.circle.fill", count: "2", color: "setBlack"),
        tableCell(title: "테스트 알림", image: "list.bullet.circle.fill", count: "1", color: "setGray")]
}
