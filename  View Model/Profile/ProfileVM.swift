//
//  ProfileVM.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 26/8/22.
//

import Foundation

class ProfileVM {
    
    static func listUSer()->[User]{
        
        var user = [User] ()
    
        user.append(User(nombre_: "Kevin", apellido_: "Rocafuerte", clPiel_: "Meztizo", clCabello_: "Negro", clOjos_: "Negro", talla_: 40, edad_: 26, altura_: 1, dni_: "0931931448", fchCumple_: 01))
        
        return user
}
    
}
