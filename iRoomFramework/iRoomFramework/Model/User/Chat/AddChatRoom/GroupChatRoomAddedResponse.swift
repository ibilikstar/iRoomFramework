//
//  GroupChatRoomAddedResponse.swift
//  
//
//  Created by Dilip kumar on 17/10/2019.
//

import Foundation

public struct GroupChatRoomAddedResponse : Codable {
	
	let status : Bool?
	let message: String?
	let data: String?
	
	enum CodingKeys: String, CodingKey {
		case status = "status"
		case message = "message"
		case data = "data"
	}
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(Bool.self, forKey: .status)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		data = try values.decodeIfPresent(String.self, forKey: .data) ?? ""
	}
	
}
