//
//  ReelssTV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 26/8/22.
//

import UIKit

class ReelssTV: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {

    var didSelectItemAction: ((Contenido?) -> Void)?
    var indexpathTableview:Int = 0
    var contenido = [Contenido]()
    var reels1 :Reels1?
    
    static let identifier = "iDReelssTV"
    
    static func nib() -> UINib{
        return UINib(nibName: "ReelssTV", bundle: nil)

    }
    ///
    func configure(with reels: [Contenido]){
       contenido = reels
        collectionV.reloadData()
    }
    
    @IBOutlet var collectionV: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        collectionV.register(ReelsCV.nib(), forCellWithReuseIdentifier: ReelsCV.identifier)
        
        collectionV.delegate = self
        collectionV.dataSource = self
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contenido.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let indexColl = indexPath.row
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReelsCV.identifier, for: indexPath) as! ReelsCV
        
        cell.configure(with: contenido[indexColl])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
  
    
}
