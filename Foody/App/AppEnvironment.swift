//
//  AppEnvironment.swift
//  Foody
//
//  Created by Trung Ng on 6/10/26.
//

import Foundation

enum AppEnvironment: String, Sendable {
    case develop
    case staging
    case production

    var current: AppEnvironment {
        let appEnv: String = Bundle.main[.appEnvironment] ?? ""
        return AppEnvironment(rawValue: appEnv) ?? .develop
    }

    var baseURL: URL {
        guard let string = Bundle.main[.apiBaseURL] as String?,
            let url = URL(string: string)
        else {
            preconditionFailure(
                "⚠️ You must set `API_BASE_URL` in your Info.plist"
            )
        }
        return url
    }
}
