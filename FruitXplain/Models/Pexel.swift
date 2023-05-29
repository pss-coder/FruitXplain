//
//  Pexel.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 24/5/23.
//

import Foundation


struct Pexel: Codable {
    var photos: [Photo]
    
    struct Photo: Codable {
        var url: String
        var src: Src
    }
    
    struct Src: Codable {
        var original: String
    }
    
    
}
