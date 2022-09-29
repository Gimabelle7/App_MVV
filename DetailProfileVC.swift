//
//  DetailProfileVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 6/9/22.
//

import UIKit

class DetailProfileVC: UIViewController {

    @IBOutlet weak var img_Per: UIImageView!
    @IBOutlet weak var lbl_Nombre: UILabel!
    @IBOutlet weak var lbl_Apellido: UILabel!
    @IBOutlet weak var lbl_Edad: UILabel!
    @IBOutlet weak var lbl_Dni: UILabel!
    @IBOutlet weak var lbl_ClOjos: UILabel!
    @IBOutlet weak var lbl_FchCumple: UILabel!
    @IBOutlet weak var lbl_ClCabello: UILabel!
    @IBOutlet weak var lbl_Altura: UILabel!
    @IBOutlet weak var lbl_Talla: UILabel!
    @IBOutlet weak var lbl_ClPiel: UILabel!
    
    
    var user: User?
    
    // non user
    var datoDefault = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let value = user {
            lbl_Nombre.text = value.nombre
            lbl_Apellido.text = value.apellido
            lbl_Edad.text = "\(value.edad)"
            lbl_Dni.text = value.dni
            return
        }
        
        lbl_Nombre.text = datoDefault
        
            print("no hay datos de usuario")
        
        
    }
}
