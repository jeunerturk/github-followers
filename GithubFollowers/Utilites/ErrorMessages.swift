//
//  ErrorMessages.swift
//  GithubFollowers
//
//  Created by Umut Can Ertürk on 12.10.2022.
//

import Foundation

enum ErrorMessage: String, Error {
case invalidUsername = "This username ceated an invalid request. Please try again"
case unableToComplete = "Unable to complete your request. Please check your internet connection"
case invalidResponse = "Invalid response from the server. Please try again."
case invalidData = "The data received from the server was invalid. Please try again."
}
