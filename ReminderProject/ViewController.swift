//
//  ViewController.swift
//  ReminderProject
//
//  Created by 이동윤 on 2022/12/13.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    
    
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
    let tableCellName = "TableViewCell"
    let tableCellCount = tableCell.data
    let tableCellReuseIdentifier = "tableCellIdentifier"
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionCellCount.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as? collectionViewCell else {
            return UICollectionViewCell()
        }
        let target = collectionCellCount[indexPath.row]
        
        let img = UIImage(systemName: "\(target.image)")
        let imgColor = UIColor(named: "\(target.color)")
        cell.cellImage?.tintColor = imgColor
        cell.cellImage?.image = img
        cell.cellcount?.text = target.count
        cell.cellToday?.text = target.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableCellCount.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: tableCellReuseIdentifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let target = tableCellCount[indexPath.row]
        
        let img = UIImage(systemName: "\(target.image)")
        let imgColor = UIColor(named: "\(target.color)")
        cell.tableCellImage?.image = img
        cell.tableCellImage?.tintColor = imgColor
        cell.tableCellCount?.text = target.count
        cell.tableCellName?.text = target.title
        
        
        return cell
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setPopUpButton()
        
        registerXib()
        registerTableXib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 170, height: 80)
        collectionView.collectionViewLayout = layout
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20)
        
        
    }
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
    
    private func registerTableXib() {
        let nibName = UINib(nibName: tableCellName, bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: tableCellReuseIdentifier)
    }
    

    
    func setPopUpButton(){
        
        let optionClosure = {(action : UIAction) in
            print(action.title)}
            
            self.option.menu = UIMenu(children : [
            UIAction(title: "목록 편집", handler: optionClosure),
            UIAction(title: "템플릿", handler: optionClosure)])
            
            self.option.showsMenuAsPrimaryAction = true
    }
    
    
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt IndexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 80)
    }
}




