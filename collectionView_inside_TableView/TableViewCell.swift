//
//  TableViewCell.swift
//  collectionView_inside_TableView
//
//  Created by Jo Tu on 3/15/17.
//  Copyright © 2017 alvorithms. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var collectionView:UICollectionView!
    
    
    var collectionViewOffset: CGFloat {
        get {
            return collectionView.contentOffset.x
        }
        
        set {
            collectionView.contentOffset.x = newValue
        }
    }
    //private var - to create a separation of concerns 
    //view controller shouldn’t be accessing the collection view through the table view cell.

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(dataSourceDelegate: D, forRow row:Int){
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
        
    }

}
