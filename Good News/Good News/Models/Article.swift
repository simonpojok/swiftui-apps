//
//  Article.swift
//  Good News
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
    let status: String
    let totalResults: Int
}

struct Article: Decodable {
    let title: String
    let description: String
}
