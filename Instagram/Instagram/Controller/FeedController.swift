//
//  FeedController.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 09/07/2022.
//

import UIKit

private let REUSE_IDENTIFIER = "CELL"

class FeedController: UICollectionViewController {

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserInterface()
    }
    
    // MARK: - Helpers
    
    func configureUserInterface() {
        view.backgroundColor = .white
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: REUSE_IDENTIFIER)
    }
}

// MARK: - UICollectionViewDataSource

extension FeedController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: REUSE_IDENTIFIER, for: indexPath)
        as! FeedCell
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 110
        return CGSize(width: view.frame.width, height: height)
    }
}
