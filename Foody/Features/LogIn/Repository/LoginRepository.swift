//
//  LoginRepository.swift
//  Foody
//
//  Created by Trung Ng on 5/10/26.
//

import Foundation

nonisolated protocol LoginRepository {
    func login(request: LoginReq) async throws -> Any
}
