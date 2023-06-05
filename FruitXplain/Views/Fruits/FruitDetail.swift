//
//  FruitDetail.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import SwiftUI




struct FruitDetail: View {
    var fruit: Fruit
    
    var body: some View {
        VStack {
            FruitImage(imageStr: fruit.image)
                .frame(width: 200, height: 200)
//                .ignoresSafeArea(edges: .top) // exted to screen edge

            HStack {
                Text("\(fruit.name)")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                VStack(alignment:.trailing) {
                    Text(fruit.order)
                        .font(.caption)
                    Text(fruit.genus)
                        .font(.caption)
                }
            }
            .padding([.bottom, .horizontal])
            
            
        

            VStack(alignment:.leading) {
                Text("Nutrition")
                    .font(.title3)
                
                Divider()

                HStack {
                    Text("Sugar: ")
                    Spacer(minLength: 10)
                    Text("\(fruit.nutritions.sugar, specifier: "%.2f")")
                }
                .font(.subheadline)
                
                HStack {
                    Text("Carbohydrates: ")
                    Spacer(minLength: 10)
                    Text("\(fruit.nutritions.carbohydrates, specifier: "%.2f")")
                }
                .font(.subheadline)
                
                HStack {
                    Text("Fat: ")
                    Spacer(minLength: 10)
                    Text("\(fruit.nutritions.fat, specifier: "%.2f")")
                }
                .font(.subheadline)
                
                HStack {
                    Text("Calories: ")
                    Spacer(minLength: 10)
                    Text("\(fruit.nutritions.calories, specifier: "%.2f")")
                }
                .font(.subheadline)
                
                ScrollView {
                    Text(fruit.description)
                        .font(.footnote)
                }
                .scrollIndicators(.visible)
                
            }
            .padding([.horizontal])

        }
        .navigationTitle(fruit.name)
//        .task {
//            await loadPexel(fruit: fruit.name)
//        }
        
    }
    
//    func loadPexel(fruit: String) async {
//        print(fruit)
//        guard let url = URL(string: "https://api.pexels.com/v1/search?query=\(fruit)&orientation=square") else {
//            print("Invalid URL")
//            return
//        }
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("NaTn3Mm6733skHI9QFAAo2LR2uz6RriGwIO9vCxEW85yr9iXU4N14mkD", forHTTPHeaderField: "authorization")
//
//        URLSession.shared.dataTask(with: request) { data, response, error in
//                    guard let data = data else{ return }
//                    do{
//                        let decodedData =  try JSONDecoder().decode(Pexel.self, from: data)
//                        print(decodedData.photos[0].src.original)
//                        imageURL = URL(string: decodedData.photos[0].src.original)
//                    }catch let error{
//                        print(error)
//                    }
//                }.resume()
//    }
    
}

struct FruitDetail_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetail(fruit: ModelData().fruits[0])
    }
}
