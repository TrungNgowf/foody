//
//  Bundle+.swift
//  Foody
//
//  Created by Trung Ng on 7/10/26.
//

import Foundation

enum InfoPlistKey: String {

    // System keys
    case appName = "CFBundleDisplayName"
    case bundleName = "CFBundleName"
    case appVersion = "CFBundleShortVersionString"
    case buildNumber = "CFBundleVersion"

    // Custom keys
    case apiBaseURL = "API_BASE_URL"
    case appEnvironment = "APP_ENVIRONMENT"
}

extension Bundle {

    subscript<T>(key: InfoPlistKey) -> T? {
        getInfo(forKey: key) as? T
    }

    func getInfo(forKey key: InfoPlistKey) -> Any? {
        guard self.infoDictionary != nil else {
            assertionFailure("⚠️ Missing or invalid info.plist")
            return nil
        }
        return self.object(forInfoDictionaryKey: key.rawValue)
    }
}
