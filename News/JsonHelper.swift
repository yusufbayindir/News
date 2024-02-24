//
//  JsonDecoder.swift
//  News
//
//  Created by Yusuf Bayindir on 2/24/24.
//

import Foundation
struct Components: Decodable{
    let status: String
    let totalResults: Int
    let articles: [Posts]
}
struct Posts: Decodable, Identifiable{
    var id: String {
        return publishedAt
    }
    let source: IdAndName
    let author: String
    let title: String
    let url: String
    let publishedAt: String
}
struct IdAndName: Decodable {
    let id: String
    let name: String
}
