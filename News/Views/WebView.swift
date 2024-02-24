//
//  WebView.swift
//  News
//
//  Created by Yusuf Bayindir on 2/24/24.
//

import WebKit
import SwiftUI
struct WebView: UIViewRepresentable{
    let urlString: String?
    var myWebView = WKWebView()
    func makeUIView(context: Context) -> some UIView {
        return myWebView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let urlS = urlString{
            if let url = URL(string: urlS){
                let request = URLRequest(url: url)
                myWebView.load(request)
            }
            
        }
    }
    
    
}
