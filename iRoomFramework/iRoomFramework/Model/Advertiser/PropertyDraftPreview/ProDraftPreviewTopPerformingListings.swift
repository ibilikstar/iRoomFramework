
import Foundation

public struct ProDraftPreviewTopPerformingListings : Codable {
	let property_id : Int?
	let property_name : String?
	let pricing : String?
	let photo : String?
	let location : String?
	let agent : String?
	let developer : String?

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
