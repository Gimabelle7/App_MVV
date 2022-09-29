//
//  PhotosCV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit


protocol ClickFavDelegate: class {
    func getClick(for value: Photo, index:Int)
}

class PhotosCV: UICollectionViewCell {
    
    @IBOutlet weak var imgCV: UIImageView!
    @IBOutlet weak var lblCV: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var imgHeart: UIImageView!
    @IBOutlet weak var clickFav: UIButton!
    
    var delegate: ClickFavDelegate?
    var itemPhoto:Photo?
    var indexCell = 0
    

    static let identifier = "PhotosCV"
    
    static func nib() -> UINib{
        return UINib(nibName: "PhotosCV", bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure (with photo : Photo,index: Int){
        itemPhoto = photo
        indexCell = index
        
        self.lblCV.text = photo.titulo
        self.lbl2.text = photo.subTl
        self.lbl3.text = photo.precio
        
        self.imgCV.image = UIImage(named: photo.imagePhoto)
        
        self.imgHeart.image = photo.fav ? UIImage(named: "favorito-on") : UIImage(named: "favorito-off")
    }
    
    @IBAction func clivkFav(_ sender: UIButton) {
        delegate?.getClick(for: itemPhoto!,index: indexCell)
    }
    
}
