//
//  Fruit.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import Foundation
import SwiftUI


struct Fruit: Hashable, Codable, Identifiable {
    
    var nutritions: nutritions
    
    var id: Int
    var order: String
    var name: String
    var genus: String
    var family: String
    
    
    
    struct nutritions: Hashable, Codable {
        var sugar: Double
        var protein: Double
        var fat: Double
        var carbohydrates: Double
        var calories: Double
    }
    
    var image: String
    
    
    var description: String {
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu posuere tellus. Ut tincidunt pellentesque velit, sed gravida ex aliquet at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas bibendum nisi orci, eget vulputate est posuere nec. Aliquam viverra dolor quis mauris pharetra tempus. Suspendisse tempus, ligula quis fringilla egestas, erat elit ullamcorper ligula, vel congue elit arcu id risus. Ut vulputate metus nec suscipit lobortis. Sed porttitor sodales leo lacinia auctor. Etiam pretium justo vitae dolor sollicitudin, ac vulputate justo molestie. Nam pharetra lorem vel tempus malesuada. Sed nec elit dolor. Donec ut arcu vulputate, efficitur ante et, laoreet ligula. Donec ac semper mi, placerat porttitor metus."
    }
    
    // TODO: update database
        // have database online!! <- Postgres?? nosql??
        // firebase!!!
    var isFavorite: Bool {
        return false
    }
}
