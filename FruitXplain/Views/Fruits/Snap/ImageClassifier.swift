//
//  ImageClassifier.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 5/6/23.
//

import SwiftUI

class ImageClassifier: ObservableObject {
    
    @Published private var classifier = Classifier()
    
    var imageClass: String? {
        classifier.results
    }
        
    // MARK: Intent(s)
    func detect(ciImage: CIImage) {
        //guard let ciImage = CIImage(cgImage: cgImage) else { return }
        
        classifier.detect(ciImage: ciImage)
        
    }
        
}
