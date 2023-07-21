//
// IntrospectAccessTokenResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IntrospectAccessTokenResponse: Codable, JSONEncodable, Hashable {

    public var account: Account

    public init(account: Account) {
        self.account = account
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case account
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(account, forKey: .account)
    }
}
