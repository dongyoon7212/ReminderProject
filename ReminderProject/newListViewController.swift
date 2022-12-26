//
//  newListViewController.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/26.
//

import UIKit

class newListViewController: UIViewController {
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

    @IBOutlet weak var detailBtn: UIButton!
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var listBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailBtn.contentHorizontalAlignment = .left
        listBtn.contentHorizontalAlignment = .left
        detailBtn.layer.cornerRadius = 10
        listBtn.layer.cornerRadius = 10
        
        // 네비게이션 바 아래 선 없애기
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    
    
    
}
