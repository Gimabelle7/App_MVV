//
//  DetailSearchVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 8/9/22.
//

import UIKit

class DetailSearchVC: UIViewController {

    @IBOutlet weak var img_Des: UIImageView!
    @IBOutlet weak var lbl_Tema: UILabel!
    @IBOutlet weak var lbl_Cant: UILabel!
    
    
    var search : Search?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_Tema.text = search?.titulo
        lbl_Cant.text = search?.subtitulo
    }
    

   

}
