//
//  Reels.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 29/8/22.
//

import Foundation

struct Reels1 {
    
    let idVideo: Int
    let nmbUsuario:String
    
    let contenido: [Contenido]
   
    init(idVideo_: Int,nmbUsuario_:String, contenido_:[Contenido]) {
        self.idVideo = idVideo_
        self.nmbUsuario = nmbUsuario_
        self.contenido = contenido_
    }
    
}

struct Contenido {
    
    let imgContenido: String
    let nmbVideo: String
    
    init(imgContenido_:String, nmbVideo_: String ){
        self.imgContenido = imgContenido_
        self.nmbVideo = nmbVideo_
    }
}
