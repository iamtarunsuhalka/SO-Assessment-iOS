//
//  PopularMovieList.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import SwiftUI

struct PopularMovieList: View {
    
    @StateObject var viewModel = PopularMovieViewModel()
    
    var body: some View {
        
        VStack {
            
            if !viewModel.movies.isEmpty {
                
                List(viewModel.movies.indices) { i in
                    let mv = viewModel.movies[i]
                    MovieCell(movie: mv)
                }
            }
            
        }.onAppear() { viewModel.getMovie() }
    }
}

struct MovieCell: View {
    
    let movie: Movie
    
    var body: some View {
        
        HStack {
            
            AsyncImage(
                url: URL(string: Constant.Url.IMAGE_BASE_URL+movie.posterPath!),
                content: { img in
                    img.image?.resizable()
                    .aspectRatio(contentMode: .fit)
                }
            )
            .frame(maxWidth: 40, maxHeight: 50)
            .mask(RoundedRectangle(cornerRadius: 16))
            
            VStack(alignment: HorizontalAlignment.leading) {
                Text(movie.originalTitle!).font(.system(size: 18)).bold()
                Text(movie.releaseDate!).font(.system(size: 10))
                HStack {
                    Image(systemName: "star").font(.system(size: 8))
                    Text(String(movie.voteAverage!)).font(.system(size: 10))
                }
            }
        }
    }
}

struct PopularMovieList_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovieList()
    }
}
