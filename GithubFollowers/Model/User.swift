//
//  User.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 11.10.2022.
//

import Foundation

struct User: Codable {
    var login: String
    var avatar_url: String
    var name: String?
    var location: String?
    var bio: String?
    var public_repos: Int
    var public_gists: Int
    var html_url: String
    var following: Int
    var follower: Int
    var created_at: String
}
