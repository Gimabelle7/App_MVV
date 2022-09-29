//
//  RopaTV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 1/9/22.
//

import UIKit

class RopaTV: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
 

    
    var didSelectItemAction: ((Descripcion?) -> Void)?
    var indexpathTableview:Int = 0
    var descripcion = [Descripcion]()
    var ropa :Ropa?
    
    static let identifier = "iDRopaTV"
    
    static func nib() -> UINib{
        return UINib(nibName: "RopaTV", bundle: nil)
    }
    
        func configureTV(with ropa: [Descripcion]){
           descripcion = ropa
            collectionV.reloadData()
   }

    @IBOutlet weak var collectionV: UICollectionView!
    
    override func awakeFromNib() {
        collectionV.register(RopaCV.nib(), forCellWithReuseIdentifier: RopaCV.identifier)
        collectionV.delegate = self
        collectionV.dataSource = self
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //collection
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return descripcion.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let indexColl = indexPath.row
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RopaCV.identifier, for: indexPath) as! RopaCV
            
            cell.configureCV(with: descripcion[indexColl])
            return cell
            
        }
        
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
        
        
}

