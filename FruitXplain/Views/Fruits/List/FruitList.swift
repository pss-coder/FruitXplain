//
//  FruitList.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import SwiftUI


struct FruitList: View {
    var modelData: ModelData
    @State private var searchText = ""

    
    var sortedFruits: [Fruit] {
        modelData.fruits.sorted { f1, f2 in
            f1.name < f2.name
        }
    }
    
    var searchedFruit: [Fruit] {
        searchText.isEmpty ? sortedFruits : sortedFruits.filter{ $0.name.contains(searchText) }
    }
    
    var body: some View {
        NavigationView {
            List {
//                NavigationLink {
//                    FruitDetail()
//                } label: {
//                    FruitRow()
//                }
                
                ForEach(searchedFruit) { fruit in
                    NavigationLink {
                        FruitDetail(fruit: fruit)
                    } label: {
                        FruitRow(fruit: fruit)
                    }

                }

            }
            .searchable(text: $searchText)
            .navigationTitle("Fruits")
        }
    }
}

struct FruitList_Previews: PreviewProvider {
    static var previews: some View {
        FruitList(modelData: ModelData())
    }
}
