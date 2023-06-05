//
//  ContentView.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 23/5/23.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
            case home
            case list
            case snap
        }
    
    @State private var selection: Tab = .home
    
    var body: some View {
//        FruitList(modelData: ModelData())
        TabView(selection: $selection) {
            VStack {
                FruitHome(fruit: ModelData().fruits.randomElement()!)
                Spacer()
            }
            .tabItem {
                Label("Home", systemImage: "star")
            }
            .tag(Tab.home)
            
            FruitList(modelData: ModelData())
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            FruitSnap(classifier: ImageClassifier())
                .tabItem {
                    Label("Snap", systemImage: "camera")
                }
                .tag(Tab.snap)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
