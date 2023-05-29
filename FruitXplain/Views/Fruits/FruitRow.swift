//
//  FruitRow.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import SwiftUI

struct FruitRow: View {
    var fruit: Fruit
    
    var body: some View {
        HStack {
            FruitImage(imageStr: fruit.image)
                .frame(width: 50,height: 50)
            Text(fruit.name)
                .padding()
            Spacer()
        }

    }
}

struct FruitRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruit: ModelData().fruits[0])
            .previewLayout(.fixed(width: 300, height: 70))

    }
}
