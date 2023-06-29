//
//  ContentView.swift
//  MainActorExample
//
//  Created by Michelle Grover on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImageView(url: URL(string: "https://cdn.asianmma.com/wp-content/uploads/2022/04/Khamzat-Chimaev-2.jpg")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
