//
//  MovieManager.swift
//  UIKitJsonExercise
//
//  Created by beratridvanasilturk on 18.01.2024.
//

import Foundation

struct MovieManager {
    
    func fetchMovies(completion: @escaping(MovieModel) -> Void ) {
        guard let url = URL(string: "https://reactnative.dev/movies.json")
        else { return }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, _, err) in
            
            if let err = err {
                print("Bad Url" + err.localizedDescription)
            }
            guard let jsonData = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedData = try decoder.decode(MovieModel.self, from: jsonData)
                
                completion(decodedData)
                
            } catch {
                print("err decoding data")
            }
        }
        // fetch starting
        dataTask.resume()
        
    }
}
