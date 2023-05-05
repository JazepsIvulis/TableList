//
//  Movie.swift
//  TableList
//
//  Created by jazeps.ivulis on 05/05/2023.
//

import Foundation

struct Movie {
    
    let title: String
    let year: String
    let director: String
    let genre: String
    let poster: String
    
    static func createMovie() -> [Movie] {
        
        var movies: [Movie] = []
        
        let titles = DataManager.shared.title
        let years = DataManager.shared.year
        let directors = DataManager.shared.director
        let genres = DataManager.shared.genre
        let posters = DataManager.shared.poster
        
        for i in 0..<titles.count {
            let movie = Movie(title: titles[i], year: years[i], director: directors[i], genre: genres[i], poster: posters[i])
            movies.append(movie)
        }
        
        return movies
    }
}
