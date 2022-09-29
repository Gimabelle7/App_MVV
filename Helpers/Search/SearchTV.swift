//
//  SearchTV.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 8/9/22.
//

import UIKit

protocol ClickHeartDelegate: class {
    func getClick(for value: Search, index:Int)
}

class SearchTV: UITableViewCell {

    
    @IBOutlet weak var img_1: UIImageView!
    @IBOutlet weak var lbl_Titulo: UILabel!
    @IBOutlet weak var lbl_Precio: UILabel!
    @IBOutlet weak var lbl_Subtitulo: UILabel!
    @IBOutlet weak var img_Heart: UIImageView!
    @IBOutlet weak var click_Fav: UIButton!
    
    var delegate : ClickHeartDelegate?
    var itemSearch: Search?
    var indexCell = 0

    static let identifier = "iDSearchTV"
    
    static func nib() -> UINib{
        return UINib(nibName: "SearchTV", bundle: nil)
    }
    
    public func configureSearchTV(with search: Search, index: Int ){
        itemSearch = search
        indexCell = index
        
        self.lbl_Titulo.text = search.titulo
        self.lbl_Subtitulo.text = search.subtitulo
        self.lbl_Precio.text = search.precio
        
        self.img_1.image = UIImage(named: search.img)
        
        self.img_Heart.image = search.favH ? UIImage(named: "on") : UIImage(named: "off")

       // self.lbl3CV.text = "\(user.edad)" // para llamar un INT
      
      }
    @IBAction func clickFav(_ sender: UIButton) {
        
        delegate?.getClick(for: itemSearch!, index: indexCell)
        
        
        
    }
    
        
    
}
