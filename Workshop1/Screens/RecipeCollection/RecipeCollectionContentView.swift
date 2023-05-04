//
//  RecipeCollectionContentView.swift
//  Workshop1
//
//  Created by omer kantar on 13/4/23.
//

import UIKit

public protocol RecipeCollectionContentViewDataSource: AnyObject {
    var title: String { get }
    var moreButtonIsHidden: Bool { get }
    var cellData: [RecipeCollectionViewCellDataSource] { get }
}

public final class RecipeCollectionContentView: UIView, ConfigureProtocol {
    
    public typealias DataSource = RecipeCollectionContentViewDataSource
    
    
    @IBOutlet private var titleLabel: WorkshopLabel!
    @IBOutlet private var collectionView: UICollectionView!
    @IBOutlet private var moreButton: UIButton!
    
    fileprivate let cellIdentifier = "RecipeCell"
    fileprivate var data: RecipeCollectionContentViewDataSource!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    public func configure(with data: DataSource) {
        self.data = data
        titleLabel.text = data.title
        moreButton.isHidden = data.moreButtonIsHidden
        collectionView.reloadData()
    }
}




// MARK: UICollectionViewDataSource

extension RecipeCollectionContentView: UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data?.cellData.count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! RecipeCollectionViewCell
        cell.configure(with: data.cellData[indexPath.row])
        return cell
    }
}

// MARK: UICollectionViewDelegate

extension RecipeCollectionContentView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

// MARK: UICollectionViewDelegateFlowLayout

extension RecipeCollectionContentView: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        12
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0.0
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 200, height: 300)
    }
}



