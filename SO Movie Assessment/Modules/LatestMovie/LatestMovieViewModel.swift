//
//  LatestMovieViewModel.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation
import SwiftyJSON

class LatestMovieViewModel: ObservableObject {
    
    @Published var isLoading = true
    @Published var latestMovie: Movie = Movie()
    
    func getMovie() {
        
        self.isLoading = true
        Api.sharedInstance.execute(path: Constant.Url.LATEST) { result in
            
            self.isLoading = false
            
            switch result {
            case .success(let data):
                
                var mv = Movie()
                mv.originalTitle = data["original_title"].stringValue
                if data["overview"].stringValue.isEmpty {
                    mv.overview = "Description Not Available"
                } else {
                    mv.overview = data["overview"].stringValue
                }
                
                mv.posterPath = data["poster_path"].stringValue

                self.latestMovie = mv
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
