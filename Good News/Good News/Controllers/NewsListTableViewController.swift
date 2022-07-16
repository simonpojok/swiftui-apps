//
//  NewsListTableViewController.swift
//  Good News
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    private var articleListViewModel: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url  = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=1151765e4af24b2dafed8292cb2cffce")!
        Webservice().getArticles(url: url) { articles in
            
            if let articles = articles {
                self.articleListViewModel = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListViewModel == nil ? 0 : self.articleListViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListViewModel == nil ? 0 : self.articleListViewModel.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError()
        }
        let cellViewModel = self.articleListViewModel.articleAtIndex(indexPath.row)
        cell.configure(viewModel: cellViewModel)
        return cell
    }
    
    
}
