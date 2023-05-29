//
//  FruitImage.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 24/5/23.
//

import SwiftUI



struct FruitImage: View {
    var imageStr: String

    var body: some View {
//        Image("Apple")
//            .resizable()
//            .scaledToFill()
        AsyncImage(url: URL(string: imageStr), scale: 2) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            Color.gray
        }


            
            //.clipShape(Circle())
//            .overlay{
//                Circle().stroke(.white,lineWidth: 4)
//            }
    }
}

struct FruitImage_Previews: PreviewProvider {
    static var previews: some View {
        FruitImage(imageStr: ModelData().fruits[0].image)
    }
}
