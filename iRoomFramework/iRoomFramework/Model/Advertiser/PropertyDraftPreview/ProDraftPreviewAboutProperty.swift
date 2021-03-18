
import Foundation

public struct ProDraftPreviewAboutProperty : Codable {
	let property_name : String?
	let property_type : String?
	let land_title : String?
	let total_units : String?
	let developer : String?

	enum CodingKeys: String, CodingKey {

		case property_name = "property_name"
		case property_type = "property_type"
		case land_title = "land_title"
		case total_units = "total_units"
		case developer = "developer"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		property_name = try values.decodeIfPresent(String.self, forKey: .property_name)
		property_type = try values.decodeIfPresent(String.self, forKey: .property_type)
		land_title = try values.decodeIfPresent(String.self, forKey: .land_title)
		total_units = try values.decodeIfPresent(String.self, forKey: .total_units)
		developer = try values.decodeIfPresent(String.self, forKey: .developer)
	}

}
