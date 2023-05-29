//
//  ModelData.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import Foundation

final class ModelData {
    
    var fruits: [Fruit] = load("fruit_dbv2.json")
    
//    var pexel: Pexel

}

// Convert JSON to Fruit Model
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//func loadPexel() async {
//    guard let url = URL(string: "https://api.pexels.com/v1/search?query=banana&orientation=square") else {
//        print("Invalid URL")
//        return
//    }
//    var request = URLRequest(url: url)
//    request.httpMethod = "GET"
//    request.setValue("NaTn3Mm6733skHI9QFAAo2LR2uz6RriGwIO9vCxEW85yr9iXU4N14mkD", forHTTPHeaderField: "authorization")
//
//    do {
//        URLSession.shared.dataTask(with: request) {  data, response, error in
//            // more code to come
//            guard let data = data else{ return }
//            do {
//                if let decodedResponse = try? JSONDecoder().decode(Pexel.self, from: data) {
//                    var pxls = decodedResponse
//                }
//            }
//            catch {
//                print(error)
//            }
//        }
//
//
//    } catch {
//        print("Invalid data")
//    }
//}


