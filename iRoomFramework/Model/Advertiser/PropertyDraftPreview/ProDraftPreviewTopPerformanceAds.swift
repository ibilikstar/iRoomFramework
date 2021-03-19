

import Foundation

public struct ProDraftPreviewTopPerformanceAds : Codable {
	public let location : String?
	public let type : String?
	public let price_range : String?

	enum CodingKeys: String, CodingKey {

		case location = "location"
		case type = "type"
		case price_range = "price_range"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		price_range = try values.decodeIfPresent(String.self, forKey: .price_range)
	}

}
