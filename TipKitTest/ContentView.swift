//
//  ContentView.swift
//  TipKitTest
//
//  Created by 안병욱의 mac on 2023/09/18.
//

import SwiftUI
import TipKit


// Define your tip's content.
struct SampleTip: Tip {
    var title: Text {
        Text("Save as a Favorite")
    }


    var message: Text? {
        Text("Your favorite backyards always appear at the top of the list.")
    }


    var image: Image? {
        Image(systemName: "star")
    }
}


struct ContentView: View {
    
    var tip = SampleTip()


    var body: some View {
        VStack {
            TipView(tip, arrowEdge: .bottom)
            Image(systemName: "star")
                .imageScale(.large)
            Spacer()
        }
        .padding()
    }
}
