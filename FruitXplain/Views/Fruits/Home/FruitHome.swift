//
//  FruitHome.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 30/5/23.
//

import SwiftUI

struct FruitHome: View {
    var fruit: Fruit

    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    FruitDetail(fruit: fruit)
                } label: {
                    FruitCard(fruit: fruit)
                }
                
                Spacer()
            }
            .navigationTitle("Fruit a Day")
            .padding()
        }
        // Display Header Fruit A Day
        // Show Random Fruit
        //
    }
}

struct FruitHome_Previews: PreviewProvider {
    static var previews: some View {
        FruitHome(fruit: ModelData().fruits[7])
    }
}
