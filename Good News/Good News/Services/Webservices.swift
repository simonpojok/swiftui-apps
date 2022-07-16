//
//  Webservices.swift
//  Good News
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping([Article]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                    return
                }
            }
            
            completion(nil)
        }.resume()
    }
}
