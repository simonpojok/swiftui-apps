//
//  ProfileCell.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 11/07/2022.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    // MARK: - Properties
    static let cellIdentifier = "ProfileCell"
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "venom-7")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        
        addSubview(postImageView)
        
        postImageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
