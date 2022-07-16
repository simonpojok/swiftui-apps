//
//  UserCell.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import UIKit

class UserCell: UITableViewCell {
    // MARK: - Properties
    static let REUSE_IDENTIFIER = "SearchController"
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
