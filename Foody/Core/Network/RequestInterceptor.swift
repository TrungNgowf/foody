//
//  RequestInterceptor.swift
//  Foody
//
//  Created by Trung Ng on 13/10/26.
//

import Foundation

nonisolated protocol RequestInterceptor {
    func intercept(request: URLRequest) async throws -> URLRequest
    func refresh(after request: URLRequest) async throws -> Bool
    func invalidate() async
}

struct PublicInterceptor: RequestInterceptor {
    func intercept(request: URLRequest) async throws -> URLRequest {
        request
    }

    func refresh(after request: URLRequest) async throws -> Bool {
        false
    }

    func invalidate() async {

    }
}

struct AuthInterceptor: RequestInterceptor {
    func intercept(request: URLRequest) async throws -> URLRequest {
        
    }
    
    func refresh(after request: URLRequest) async throws -> Bool {
        
    }
    
    func invalidate() async {
        
    }
    
    
}
