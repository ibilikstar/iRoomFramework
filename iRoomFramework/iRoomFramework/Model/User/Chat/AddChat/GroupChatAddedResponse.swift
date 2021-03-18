//
//  GroupChatAddedResponse.swift
//  starproperty
//
//  Created by Dilip kumar on 14/05/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct GroupChatAddedResponse : Codable {
	
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
		data = try values.decodeIfPresent(String.self, forKey: .data)
	}
	
}
