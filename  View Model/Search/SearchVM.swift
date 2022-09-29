//
//  SearchVM.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 8/9/22.
//

import Foundation

class SearchVM {
    static func listSearch() -> [Search]{
        
        var search = [Search] ()
        
        search.append(Search(img_: "Sushi", titulo_: "Philadelphia Roll", subtitulo_: "Salmon and Cream Cheese", precio_: "$8.60", cantidad_: "", favH_: false))
        
        
        search.append(Search(img_: "Sushi2", titulo_: "Tikka Maki", subtitulo_: "Cooked tuna", precio_: "$12.30", cantidad_: "", favH_: false))
        
        
        return search
    }
}








