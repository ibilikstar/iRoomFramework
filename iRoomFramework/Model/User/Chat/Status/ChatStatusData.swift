//
//  ChatStatusData.swift
//  starproperty
//
//  Created by Dilip kumar on 14/05/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct ChatStatusData : Codable {
	let groupId : String?
	
	enum CodingKeys: String, CodingKey {
		case groupId = "group_chat_id"
	}
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		groupId = try values.decodeIfPresent(String.self, forKey: .groupId)
	}
}
