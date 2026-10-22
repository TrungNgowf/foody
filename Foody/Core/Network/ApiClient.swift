//
//  ApiClient.swift
//  Foody
//
//  Created by Trung Ng on 5/10/26.
//

import Foundation

actor ApiClient {
    private let baseUrl: String
    private let session: URLSession
    private let decoder: JSONDecoder
    private let encoder: JSONEncoder
    
    init(baseUrl: String, session: URLSession = .init(configuration: .)) {
        self.baseUrl = baseUrl
        self.session = session
        self.decoder = decoder
        self.encoder = encoder
    }
}
