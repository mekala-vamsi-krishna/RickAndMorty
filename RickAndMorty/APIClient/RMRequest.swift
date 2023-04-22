//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Mekala Vamsi Krishna on 19/04/23.
//

import Foundation

/// Object that represnts singlet API call
final class RMRequest {
    // Endpoint
    // Path components
    // Query parameters
    /// API Constants
    struct Constatnts {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint // baseUrl + character(endpoint)
    /// Path Components for API if any
    private let pathComponents: [String] // baseUrl + character(endpoint) + 2(PathComponents)
    /// Query Parameters for API if any
    private let queryParameters: [URLQueryItem] // baseUrl + character(endpoint) + 2 + name="MekalaVamsiKrishna"(queryParameters)
    
    /// Constructed URL for the API request in String format
    private var urlString: String {
        var string = Constatnts.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //name=value&ame=value
            let arguementString = queryParameters.compactMap({
                guard let  value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += arguementString
        }
        
        return string
    }
    
    /// Computed constructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired httpMethod
    public let httpMethod = "GET"
    
    //MARK: Public Intializer
    /// Construct Reques
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: collection of query paramters
    public init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
