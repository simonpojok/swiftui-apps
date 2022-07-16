//
//  SearchController.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 09/07/2022.
//

import UIKit

class SearchController: UITableViewController {
    // MARK: - Properties
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.register(UserCell.self, forCellReuseIdentifier: UserCell.REUSE_IDENTIFIER)
    }

    // MARK: - Helpers
}

// MARK: - TableViewDataSource
extension SearchController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserCell.REUSE_IDENTIFIER, for: indexPath)
        cell.backgroundColor = .systemRed
        return cell
    }
    
    
}
