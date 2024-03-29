//
//  MovieModel.swift
//  UIKitJsonExercise
//
//  Created by beratridvanasilturk on 18.01.2024.
//

import Foundation

struct MovieModel: Codable {
    let title: String
    let description: String
    let movies: [Movies]
}

struct Movies: Codable {
    let id: String
    let title: String
    let releaseYear: String
}

// Backend Datas:
//{
//  "title": "The Basics - Networking",
//  "description": "Your app fetched this from a remote endpoint!",
//  "movies": [
//    { "id": "1", "title": "Star Wars", "releaseYear": "1977" },
//    { "id": "2", "title": "Back to the Future", "releaseYear": "1985" },
//    { "id": "3", "title": "The Matrix", "releaseYear": "1999" },
//    { "id": "4", "title": "Inception", "releaseYear": "2010" },
//    { "id": "5", "title": "Interstellar", "releaseYear": "2014" }
//  ]
//}
