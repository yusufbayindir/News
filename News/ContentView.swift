//
//  ContentView.swift
//  News
//
//  Created by Yusuf Bayindir on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
         NavigationStack{
                List(networkManager.posts) { post in
                    Text(post.title)
                }
                .navigationTitle("News")
            }.onAppear(perform: {
                self.networkManager.fetchUrl()
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
