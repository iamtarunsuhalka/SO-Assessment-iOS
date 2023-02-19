//
//  Movie.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation

struct Movie: Codable, Identifiable {
    let id: Int? = 0
    let adult: Bool? = false
    let backdropPath: String? = ""
    let belongsToCollection: String? = ""
    let budget: Int? = 0
    let genres: [Int]? = []
    let homepage: String? = ""
    let imdbID: String? = ""
    let originalLanguage: String? = ""
    var originalTitle: String? = ""
    var overview: String? = ""
    let popularity: Int? = 0
    var posterPath: String? = ""
    let productionCompanies: String? = ""
    let productionCountries: [String]? = []
    var releaseDate: String? = ""
    let revenue: Int? = 0
    let runtime: Int? = 0
    let spokenLanguages: [String]? = []
    let status: String? = ""
    let tagline: String? = ""
    let title: String? = ""
    let video: Bool? = false
    var voteAverage: Int? = 0
    let voteCount: Int? = 0
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case belongsToCollection = "belongs_to_collection"
        case budget, genres, homepage, id
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case productionCompanies = "production_companies"
        case productionCountries = "production_countries"
        case releaseDate = "release_date"
        case revenue, runtime
        case spokenLanguages = "spoken_languages"
        case status, tagline, title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
