//
//  NearByDetailList.swift
//  iRoomFramework
//
//  Created by Dilip kumar on 18/03/2021.
//

import Foundation

public struct NearByDetailList : Codable {
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
