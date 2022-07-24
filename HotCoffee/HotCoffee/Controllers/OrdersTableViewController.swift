//
//  OrdersTableViewController.swift
//  HotCoffee
//
//  Created by Simon Peter Ojok on 17/07/2022.
//

import UIKit

class OrdersTableViewController: UITableViewController {
    
    var ordersListViewModel: OrderListViewModel = OrderListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders() {
        guard let coffeeOrdersURL = URL(string: "https://warp-wiry-rugby.glitch.me/orders") else {
            fatalError()
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservice().load(resource: resource) { [weak self] results in
            switch results {
            case .success(let orders):
                print(orders)
                self?.ordersListViewModel.ordersViewModel = orders.map(OrderViewModel.init)
                self?.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ordersListViewModel.ordersViewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vm = self.ordersListViewModel.orderViewModel(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath)
        
        cell.textLabel?.text = vm.type
        cell.detailTextLabel?.text = vm.size
        return cell
    }
}
