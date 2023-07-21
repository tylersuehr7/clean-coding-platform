//
// CreateTaskRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateTaskRequest: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    static let descriptionRule = StringRule(minLength: nil, maxLength: 2048, pattern: nil)
    public var name: String
    public var description: String?
    public var shareWithIds: [UUID]

    public init(name: String, description: String? = nil, shareWithIds: [UUID]) {
        self.name = name
        self.description = description
        self.shareWithIds = shareWithIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case shareWithIds = "share_with_ids"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(shareWithIds, forKey: .shareWithIds)
    }
}
