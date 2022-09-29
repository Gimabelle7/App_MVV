//
//  PhotoVM.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import Foundation
class PhotoVM {
    
    static func listPhoto()->[Photo]{
         var photo = [Photo]()
        
        photo.append(Photo(titulo_: "Stradivarius", imagePhoto_: "Blusa", subTl_: "Talla S", precio_: "$15", fav_: false))
        
        photo.append(Photo(titulo_: "Pull&Bear", imagePhoto_: " Pantalon", subTl_: "Talla 10", precio_: "$25", fav_: false))
        
        photo.append(Photo(titulo_: "Koaj", imagePhoto_: "Vestido", subTl_: "Talla M", precio_: "$30", fav_: false))
        
        photo.append(Photo(titulo_: "Zara", imagePhoto_: "Zapatos", subTl_: "Talla 39", precio_: "$40", fav_: false))
        
        photo.append(Photo(titulo_: "Tropical", imagePhoto_: "Gafas", subTl_: "Mujer", precio_: "$50", fav_: false))
        
        photo.append(Photo(titulo_: "Pink", imagePhoto_: "Bolso", subTl_: "Playero", precio_: "$35", fav_: false))
        
        
         return photo
        
     }
    
    
}
