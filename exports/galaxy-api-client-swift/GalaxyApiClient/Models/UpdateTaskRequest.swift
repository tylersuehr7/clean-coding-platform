//
// UpdateTaskRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateTaskRequest: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: nil, maxLength: 256, pattern: nil)
    static let descriptionRule = StringRule(minLength: nil, maxLength: 2048, pattern: nil)
    public var name: String
    public var description: String?
    public var completedOn: Bool?
    public var deletedOn: Bool?

    public init(name: String, description: String? = nil, completedOn: Bool? = nil, deletedOn: Bool? = nil) {
        self.name = name
        self.description = description
        self.completedOn = completedOn
        self.deletedOn = deletedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case completedOn = "completed_on"
        case deletedOn = "deleted_on"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(completedOn, forKey: .completedOn)
        try container.encodeIfPresent(deletedOn, forKey: .deletedOn)
    }
}
