//
//  Photo.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import Foundation

struct Photo {
    let titulo: String
    let subTl: String
    let precio: String
    let imagePhoto: String
    var fav: Bool

    
    init(titulo_: String, imagePhoto_:
         String, subTl_: String, precio_ : String, fav_:Bool){
        self.titulo = titulo_
        self.subTl = subTl_
        self.precio = precio_
        self.imagePhoto = imagePhoto_
        self.fav = fav_
    }
    
   
}
