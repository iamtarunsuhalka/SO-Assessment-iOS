//
//  LatestMovie.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import SwiftUI

struct LatestMovie: View {
    
    @StateObject var viewModel = LatestMovieViewModel()
    
    var body: some View {
        VStack() {
            Text(viewModel.latestMovie.originalTitle!).font(.title)
            Spacer().frame(height: 10)
            Text(viewModel.latestMovie.overview!)
            
            AsyncImage(
                url: URL(string: Constant.Url.IMAGE_BASE_URL+viewModel.latestMovie.posterPath!),
                content: { img in
                    img.image?.resizable()
                    .aspectRatio(contentMode: .fit)
                }
            )
            .frame(maxWidth: 180, maxHeight: 250)
            
            Spacer()

        }
        .onAppear { viewModel.getMovie() }
    }
}

struct LatestMovie_Previews: PreviewProvider {
    static var previews: some View {
        LatestMovie()
    }
}
