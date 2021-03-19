

import Foundation

public struct ProDraftPreviewNearbyAmenities : Codable {
    
	public let name : String?
	public let location_state : String?
	public let area : String?
	public let lat : String?
	public let lng : String?
	public let type : String?
	public let distance : Double?
    
	enum CodingKeys: String, CodingKey {

		case name = "name"
		case location_state = "location_state"
		case area = "area"
		case lat = "lat"
		case lng = "lng"
		case type = "type"
		case distance = "distance"
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		location_state = try values.decodeIfPresent(String.self, forKey: .location_state)
		area = try values.decodeIfPresent(String.self, forKey: .area)
		lat = try values.decodeIfPresent(String.self, forKey: .lat)
		lng = try values.decodeIfPresent(String.self, forKey: .lng)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		distance = try values.decodeIfPresent(Double.self, forKey: .distance)
	}

}

enum AgentNearByTypes : String{
    //            train_station
    //            hospital
    //            bank
    //            school
    //            bus_station
    //            light_rail_station
    //            supermarket
    //            university
    case trainStation = "train_station"
    case lightRailWayStation = "light_rail_station"
    case busStation = "bus_station"
    case schools = "school"
    case hospitals = "hospital"
    case banks = "bank"
    case supermarkets = "supermarket"
    case universities = "university"
    case all = "all"
}
