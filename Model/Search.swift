//
//  Search.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 8/9/22.
//

import Foundation

struct Search {
    
    let img : String
    let titulo: String
    let subtitulo: String
    let precio : String
    let cantidad: String
    var favH : Bool
    
    init (img_: String, titulo_: String, subtitulo_: String, precio_: String, cantidad_: String, favH_: Bool) {
        
        self.img = img_
        self.titulo = titulo_
        self.subtitulo = subtitulo_
        self.precio = precio_
        self.cantidad = cantidad_
        self.favH = favH_
    }
    
}
