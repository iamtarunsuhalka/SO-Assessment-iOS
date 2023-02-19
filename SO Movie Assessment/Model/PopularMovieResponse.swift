//
//  PopularMovieResponse.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation

struct PopularMovieResponse: Codable {
    let page: Int = 0
    let results: [Results] = []
    let totalPages: Int = 0
    let totalResults: Int = 0

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Results: Codable, Identifiable {
    let adult: Bool = false
    let backdropPath: String = ""
    let genreIDS: Array<Int> = []
    let id: Int = 0
    let originalLanguage: [String] = []
    let originalTitle: String = ""
    let overview: String = ""
    let popularity: Double = 0
    let posterPath: String = ""
    let releaseDate: String = ""
    let title: String = ""
    let video: Bool = false
    let voteAverage: Double = 0
    let voteCount: Int = 0

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
