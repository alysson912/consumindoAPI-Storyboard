// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Meme: Codable {
    let success: Bool
    let data: Data
}

// MARK: - DataClass
struct Data: Codable {
    let memes: [MemeObject]
}

// MARK: - Meme
struct MemeObject: Codable {
    let id, name: String
    let url: String
    let width, height, boxCount, captions: Int

    enum CodingKeys: String, CodingKey {
        case id, name, url, width, height
        case boxCount = "box_count"
        case captions
    }
}
