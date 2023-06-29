//
//  ImageLoader.swift
//  MainActorExample
//
//  Created by Michelle Grover on 6/28/23.
//

import SwiftUI

@MainActor
class ImageLoader: ObservableObject {
    @Published var image: Image? = nil

    func load(from url: URL) {
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let uiImage = UIImage(data: data) {
                    image = Image(uiImage: uiImage)
                }
            } catch {
                // Handle error
            }
        }
    }
}
