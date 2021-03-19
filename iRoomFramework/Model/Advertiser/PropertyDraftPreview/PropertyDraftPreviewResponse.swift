

import Foundation

public struct PropertyDraftPreviewResponse : Codable {
	public let status : Bool?
	public let message : String?
	public let data : PropertyDraftPreviewData?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case message = "message"
		case data = "data"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(Bool.self, forKey: .status)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		data = try values.decodeIfPresent(PropertyDraftPreviewData.self, forKey: .data)
	}

}
