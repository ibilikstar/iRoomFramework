
import Foundation

public struct ProDraftPreviewLocation : Codable {
	public let location_state : String?
	public let parent : String?
	public let area : String?
	public let postal_code : String?
	public let lat : String?
	public let lng : String?

	enum CodingKeys: String, CodingKey {

		case location_state = "location_state"
		case parent = "parent"
		case area = "area"
		case postal_code = "postal_code"
		case lat = "lat"
		case lng = "lng"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		location_state = try values.decodeIfPresent(String.self, forKey: .location_state)
		parent = try values.decodeIfPresent(String.self, forKey: .parent)
		area = try values.decodeIfPresent(String.self, forKey: .area)
		postal_code = try values.decodeIfPresent(String.self, forKey: .postal_code)
		lat = try values.decodeIfPresent(String.self, forKey: .lat)
		lng = try values.decodeIfPresent(String.self, forKey: .lng)
	}

}
