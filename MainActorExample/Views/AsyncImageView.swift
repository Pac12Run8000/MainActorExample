//
//  AsyncImageView.swift
//  MainActorExample
//
//  Created by Michelle Grover on 6/28/23.
//

import SwiftUI

struct AsyncImageView: View {
    @StateObject private var loader = ImageLoader()

    var url: URL

    var body: some View {
        Group {
            if let image = loader.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                ProgressView()
            }
        }
        .onAppear {
            loader.load(from: url)
        }
    }
}
