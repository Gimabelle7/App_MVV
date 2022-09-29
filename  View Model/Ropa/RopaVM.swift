//
//  RopaVM.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 1/9/22.
//

import Foundation

class RopaVM {
    
    static func listRopa()->[Ropa] {
        
        var ropaArray = [Ropa]()
       
        let ropa = Ropa (color_: "rojo", titulo_: "Ropa de Vacaciones", descripcion_: [Descripcion(marca_: "Stradivarius", precio_: 10, stock_: "solo queda 1 prenda")]
                         
        )
                         
        
       
       ropaArray.append(ropa)

        return ropaArray
    }
}
