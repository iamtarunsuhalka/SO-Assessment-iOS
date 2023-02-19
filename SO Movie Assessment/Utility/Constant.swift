//
//  Constant.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation

struct Constant {
    
    struct Url {
        static let BASE_URL = "https://api.themoviedb.org/3/movie/"
        static let IMAGE_BASE_URL = "https://image.tmdb.org/t/p/w500"
        static let LATEST = "latest?language=en-US&api_key=909594533c98883408adef5d56143539"
        static let POPULAR = "popular?language=en-US&api_key=909594533c98883408adef5d56143539"
    }

    struct HTTPMethod {
        static let GET = "GET"
        static let POST = "POST"
    }
}
