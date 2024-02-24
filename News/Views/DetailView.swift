//
//  DetailView.swift
//  News
//
//  Created by Yusuf Bayindir on 2/24/24.
//

import SwiftUI
struct DetailView: View {
    var url: String?
    var body: some View {
        WebView(urlString: url)    }
}

#Preview {
    DetailView()
}
