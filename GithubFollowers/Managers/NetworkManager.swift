//
//  NetworkManager.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 11.10.2022.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], ErrorMessage>) -> Void) {
        let endPoint = baseURL + "users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endPoint) else {
            completed(Result.failure(ErrorMessage.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(ErrorMessage.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(ErrorMessage.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(ErrorMessage.invalidData))
                return
            }
            
            do {
              let decoder = JSONDecoder()
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(ErrorMessage.invalidData))
            }
        }
        
        task.resume()
        
    }
}
