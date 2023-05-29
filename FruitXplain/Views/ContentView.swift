//
//  ContentView.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FruitList(modelData: ModelData())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
