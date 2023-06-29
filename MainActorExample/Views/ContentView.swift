//
//  ContentView.swift
//  MainActorExample
//
//  Created by Michelle Grover on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImageView(url: URL(string: "https://cdn.bloodyelbow.com/wp-content/uploads/2023/06/mma-ufc-279-chimaev-vs-holland-1015249553-1-scaled.jpg?width=1280&aspect_ratio=16:10")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
