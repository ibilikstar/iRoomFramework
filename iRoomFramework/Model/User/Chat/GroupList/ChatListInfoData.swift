//
//  ChatListInfoData.swift
//  starproperty
//
//  Created by Dilip kumar on 14/10/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct ChatListInfoData : Codable {
	
	let groupChatId : String?
	let classifiedId: Int64?
	let propertyName: String?
	let propertyImage: String?
	let agentId: Int?
	let agentName: String?
	let agentEmail: String?
	let agentImage: String?
	let userId: Int?
	let userName: String?
	let userEmail: String?
	let userImage: String?
	
	enum CodingKeys: String, CodingKey {
		case groupChatId = "group_chat_id"
		case classifiedId = "room_id" // Before classified_id
		case propertyName = "room_title" // before property_name
		case propertyImage = "room_image" // before property_mage
		case agentId = "agent_id"
		case agentName = "agent_name"
		case agentEmail = "agent_email"
		case agentImage = "agent_image"
		case userId = "user_id"
		case userName = "user_name"
		case userEmail = "user_email"
		case userImage = "user_image"
	}
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		groupChatId = try values.decodeIfPresent(String.self, forKey: .groupChatId)
		classifiedId = try values.decodeIfPresent(Int64.self, forKey: .classifiedId)
		propertyName = try values.decodeIfPresent(String.self, forKey: .propertyName)
		propertyImage = try values.decodeIfPresent(String.self, forKey: .propertyImage)
		agentId = try values.decodeIfPresent(Int.self, forKey: .agentId)
		agentName = try values.decodeIfPresent(String.self, forKey: .agentName)
		agentEmail = try values.decodeIfPresent(String.self, forKey: .agentEmail)
		agentImage = try values.decodeIfPresent(String.self, forKey: .agentImage)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		userName = try values.decodeIfPresent(String.self, forKey: .userName)
		userEmail = try values.decodeIfPresent(String.self, forKey: .userEmail)
		userImage = try values.decodeIfPresent(String.self, forKey: .userImage)
	}
	
}
