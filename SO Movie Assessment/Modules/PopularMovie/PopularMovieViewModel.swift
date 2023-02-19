//
//  PopularMovieViewModel.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation
import SwiftyJSON

class PopularMovieViewModel: ObservableObject {
    
    @Published var isLoading = true
    @Published var movies: [Movie] = []
    
    func getMovie() {
        
        self.isLoading = true
        Api.sharedInstance.execute(path: Constant.Url.POPULAR) { result in
            
            self.isLoading = false
            
            switch result {
            case .success(let data):
                var movieList = [Movie]()
                let ct = data["results"].count-1
                for i in 0...ct {
                    var mv = Movie()
                    mv.originalTitle = data["results"][i]["original_title"].stringValue
                    mv.posterPath = data["results"][i]["poster_path"].stringValue
                    mv.voteAverage = data["results"][i]["vote_average"].intValue
                    mv.releaseDate = data["results"][i]["release_date"].stringValue
                    movieList.append(mv)
                }
                self.movies = movieList

            case .failure(let error):
                print(error)
            }
        }
    }
    
}
