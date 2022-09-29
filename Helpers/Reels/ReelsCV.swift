//
//  ReelsCV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 26/8/22.
//

import UIKit

class ReelsCV: UICollectionViewCell {

    @IBOutlet weak var imgCV: UIImageView!
    @IBOutlet weak var lblCV: UILabel!
    
    static let identifier = "ReelsCV"
    static func nib() -> UINib{
        return UINib(nibName: "ReelsCV", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with Reels1: Contenido){
        self.lblCV.text = Reels1.nmbVideo
        self.imgCV.image = UIImage(named: Reels1.imgContenido)
    }
    

}
