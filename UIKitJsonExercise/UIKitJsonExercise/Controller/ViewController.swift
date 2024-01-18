//
//  ViewController.swift
//  UIKitJsonExercise
//
//  Created by beratridvanasilturk on 18.01.2024.
//

import UIKit

class ViewController: UITableViewController {
    //MARK: - Properties
    let reuseIdentifier = "MovieCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }

    func configureTableView() {
        tableView.backgroundColor = .brown
        tableView.tableFooterView = UIView()
    }
}

// UITableView datasource & delegate methods
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? nil
        
        return cell!
    }
}
