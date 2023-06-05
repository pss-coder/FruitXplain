//
//  FruitCard.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 29/5/23.
//

import SwiftUI

struct FruitCard: View {
    var fruit:Fruit
    
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 45, style: .circular)
                                .fill(.white)
                                .shadow(radius: 10)
                                .frame(width:350, height: 600)
                VStack(alignment:.leading) {
                    FruitImage(imageStr: fruit.image)
                        .frame(width: 300, height: 300)
                        .cornerRadius(35)
                    
                    VStack(alignment:.leading) {
                        Text(fruit.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(fruit.family)
                            .font(.callout)
                    }
                }
                
            }
            .scaledToFit()
        }
    }
}

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(fruit: ModelData().fruits[0])
    }
}
