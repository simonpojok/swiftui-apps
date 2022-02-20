//
//  PageModel.swift
//  Pinch
//
//  Created by Simon Peter Ojok on 20/02/2022.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thembnailName: String {
        return "thumb-" + imageName
    }
}
