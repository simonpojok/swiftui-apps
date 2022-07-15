//
//  ProfileHeader.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 11/07/2022.
//

import UIKit

class ProfileHeader: UICollectionReusableView {
    // MARK: - Properties
    static let cellIdentifier = "ProfileHeader"
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "venom-7")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Eddie Brock"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    private lazy var editProfileFollowButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Edit Profile", for: .normal)
        button.layer.cornerRadius = 3
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleEditProfileFollowTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var postsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.attributedText = attributedStatText(
            value: 10,
            label: "Posts"
        )
        return label
    }()
    
    private lazy var followersLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.attributedText = attributedStatText(
            value: 2,
            label: "Followers"
        )
        return label
    }()
    
    private lazy var followingLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.attributedText = attributedStatText(
            value: 1,
            label: "Following"
        )
        return label
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(profileImageView)
        profileImageView.anchor(
            top: topAnchor,
            left: leftAnchor,
            paddingTop: 16,
            paddingLeft: 12
        )
        profileImageView.setDimensions(height: 80, width: 80)
        profileImageView.layer.cornerRadius = 40
        
        addSubview(nameLabel)
        nameLabel.anchor(
            top: profileImageView.bottomAnchor,
            left: leftAnchor,
            paddingTop: 12,
            paddingLeft: 12
        )
        
        addSubview(editProfileFollowButton)
        editProfileFollowButton.anchor(
            top: nameLabel.bottomAnchor,
            left: leftAnchor,
            right: rightAnchor,
            paddingTop: 16,
            paddingLeft: 24,
            paddingRight: 24
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Actions
    
    @objc func handleEditProfileFollowTapped() {
        print("DEBUG: Handle Edit Profile")
    }
    
    // MARK: - Helpers
    func attributedStatText(value: Int, label: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(
            string: "\(value)\n",
            attributes: [.font: UIFont.boldSystemFont(ofSize: 14)]
        )
        attributedText.append(
            NSAttributedString(
                string: label,
                attributes: [
                    .font: UIFont.systemFont(ofSize: 14),
                    .foregroundColor: UIColor.lightGray
                ]
            )
        )
        return attributedText
    }
}
