//
//  ReelsVM.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 29/8/22.
//

import Foundation

class ReelsVM {

static func listReels()->[Reels1] {
    
    var reelsArray = [Reels1]()
   
   let reels1 = Reels1 (idVideo_: 3, nmbUsuario_: "kevin", contenido_: [Contenido (imgContenido_: "javascript", nmbVideo_: "Lenguaje"),Contenido (imgContenido_: "javascript", nmbVideo_: "Lenguaje")]
                        
   )
  
   
   reelsArray.append(reels1)
 
   
   return reelsArray
}


}
