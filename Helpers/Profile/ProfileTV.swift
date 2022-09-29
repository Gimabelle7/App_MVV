//
//  ProfileTV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class ProfileTV: UITableViewCell {
    
    @IBOutlet weak var lblCV: UILabel!
    @IBOutlet weak var lbl2CV: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
  
    static let identifier = "iDProfileTV"
    
    static func nib() -> UINib{
        return UINib(nibName: "ProfileTV", bundle: nil)
    }
    
  public func configureTV(with user: User){
      self.lblCV.text = user.apellido
      self.lbl2CV.text = "\(user.edad)"
      self.img.image = UIImage(named: user.nombre)
     // self.lbl3CV.text = "\(user.edad)" // para llamar un INT
    
    }
   
}
