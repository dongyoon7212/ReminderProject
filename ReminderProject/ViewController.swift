//
//  ViewController.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var myList: UILabel!
    @IBOutlet weak var newList: UIButton!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var addList: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var option: UIButton!
    
    let collectionCellCount = collectionCell.data
    let cellName = "collectionViewCell"
    let cellReuseIdentifier = "collectionCellIdentifier"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionCellCount.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as? collectionViewCell else {
            return UICollectionViewCell()
            }
        let target = collectionCellCount[indexPath.row]
        
        let img = UIImage(systemName: "\(target.image)")
        cell.cellImage?.image = img
        cell.cellcount?.text = target.count
        cell.cellToday?.text = target.title
        
        return cell
    }
    
    
    


    

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerXib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        

        }
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: cellReuseIdentifier)
    }


}

