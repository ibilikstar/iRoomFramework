
import Foundation

public struct ProDraftPreviewTopPerformingListings : Codable {
	public let property_id : Int?
	public let property_name : String?
	public let pricing : String?
	public let photo : String?
	public let location : String?
	public let agent : String?
	public let developer : String?

	enum CodingKeys: String, CodingKey {

		case property_id = "property_id"
		case property_name = "property_name"
		case pricing = "pricing"
		case photo = "photo"
		case location = "location"
		case agent = "agent"
		case developer = "developer"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		property_id = try values.decodeIfPresent(Int.self, forKey: .property_id)
		property_name = try values.decodeIfPresent(String.self, forKey: .property_name)
		pricing = try values.decodeIfPresent(String.self, forKey: .pricing)
		photo = try values.decodeIfPresent(String.self, forKey: .photo)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		agent = try values.decodeIfPresent(String.self, forKey: .agent)
		developer = try values.decodeIfPresent(String.self, forKey: .developer)
	}

}
