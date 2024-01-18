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
    
    var moviesArray: [Movies]? {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
        let movieManager = MovieManager()
        
        movieManager.fetchMovies { (movies) in
            DispatchQueue.main.async {
                self.navigationItem.title = movies.title
            }
            
            self.moviesArray = movies.movies
        }
    }
    
    func configureTableView() {
        tableView.backgroundColor = .lightGray
        tableView.tableFooterView = UIView()
    }
}

// UITableView datasource & delegate methods
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray?.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? nil
        
        guard let movie = moviesArray?[indexPath.row] else {return UITableViewCell() }
        
        cell?.textLabel?.text = movie.title + " - " + movie.releaseYear
        return cell!
    }
}
