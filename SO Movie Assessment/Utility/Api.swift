//
//  Api.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import Foundation
import SwiftyJSON

class Api {
    
    static let sharedInstance = Api()

    func execute(path: String, onCompletion: @escaping(Result<JSON, Error>) -> Void) {
        
        let urlStr = Constant.Url.BASE_URL + path
        print("URL - \(urlStr)")
        let url = URL(string: urlStr)!
        let session = URLSession.shared
        var request = URLRequest(url: url)
        request.httpMethod = Constant.HTTPMethod.GET

        let _: Void = session.dataTask(with: request) {(data, response, error) in
            
            DispatchQueue.main.async {
                guard let data = data else {
                    onCompletion(.failure(error!))
                    return
                }
                onCompletion(.success(JSON(data)))
            }
            
        }.resume()
    }
}
