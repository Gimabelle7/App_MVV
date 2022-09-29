//
//  Ropa.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 1/9/22.
//

import Foundation

struct Ropa {
    
    let color:String
    let titulo: String
    
    let descripcion : [Descripcion]
    
    init(color_: String,titulo_:String, descripcion_: [Descripcion]){
    
    self.color = color_
    self.titulo = titulo_
    self.descripcion = descripcion_
}

}

struct Descripcion {
    
    let marca: String
    let precio: Int
    let stock: String
    


    init(marca_: String,precio_:Int, stock_:String){
        self.marca = marca_
        self.precio = precio_
        self.stock = stock_
        
    }
    
}
