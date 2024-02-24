
//
//  NetworkManager.swift
//  News
//
//  Created by Yusuf Bayindir on 2/24/24.
//

import Foundation

class NetworkManager: ObservableObject{
    @Published var posts = [Posts]()
    func fetchUrl(){
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=tr&apiKey=cd520566c9824aff8be642eef0a9d57c"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Components.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            })
            task.resume()
        }
    }
}

