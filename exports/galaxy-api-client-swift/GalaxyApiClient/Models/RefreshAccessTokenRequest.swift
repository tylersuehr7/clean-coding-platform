//
// RefreshAccessTokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RefreshAccessTokenRequest: Codable, JSONEncodable, Hashable {

    static let refreshRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    public var refresh: String

    public init(refresh: String) {
        self.refresh = refresh
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case refresh
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(refresh, forKey: .refresh)
    }
}

