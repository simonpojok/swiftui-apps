//
//  ArticleTableViewCell.swift
//  Good News
//
//  Created by Simon Peter Ojok on 17/07/2022.
//

import Foundation
import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(viewModel: ArticleViewModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
    }
}
