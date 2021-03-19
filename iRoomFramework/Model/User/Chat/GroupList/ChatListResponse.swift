//
//  ChatListResponse.swift
//  starproperty
//
//  Created by Dilip kumar on 14/10/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct ChatListResponse : Codable {
	
	public let status : Bool?
	public let message: String?
	public let totalCount: Int?
	public let data : [ChatListInfoData]?
	
	enum CodingKeys: String, CodingKey {
		case status = "status"
		case message = "message"
		case totalCount = "total_count"
		case data = "data"
	}
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(Bool.self, forKey: .status)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
		data = try values.decodeIfPresent([ChatListInfoData].self, forKey: .data)
	}
	
}
