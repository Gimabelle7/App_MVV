//
//  RopaCV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 1/9/22.
//

import UIKit

class RopaCV: UICollectionViewCell {

    @IBOutlet weak var lblCV: UILabel!
    @IBOutlet weak var imgCV: UIImageView!
    
    
    static let identifier = "RopaCV"
    static func nib() -> UINib{
        return UINib(nibName: "RopaCV", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configureCV(with Ropa: Descripcion){
        self.lblCV.text = Ropa.stock
        self.imgCV.image = UIImage(named: Ropa.marca)
    }
    
    
}
