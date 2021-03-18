//
//  ChatInfoData.swift
//  Starproperty Agent
//
//  Created by Dilip kumar on 14/06/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct ChatInfoData : Codable {
	
	let propertyId : Int?
	let propertyName : String?
	let propertyImage: String?
	let agentId: Int?
	let agentName: String?
	let agentEmail: String?
	let agentAvatar: String?
	let userId: Int?
	let userName: String?
	let userEmail: String?
	let userAvatar: String?
    let roomType : String?
    
	enum CodingKeys: String, CodingKey {
		case propertyId = "room_id" // previously it was property_id
		case propertyName = "room_title" // previously it was property_name
		case propertyImage = "room_image" // previously it was property_image
		case agentId = "agent_id"
		case agentName = "agent_name"
		case agentEmail = "agent_email"
		case agentAvatar = "agent_image"
		case userId = "user_id"
		case userName = "user_name"
		case userEmail = "user_email"
		case userAvatar = "user_image"
        case roomType = "room_type"
        
	}
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		propertyId = try values.decodeIfPresent(Int.self, forKey: .propertyId)
		propertyName = try values.decodeIfPresent(String.self, forKey: .propertyName)
		propertyImage = try values.decodeIfPresent(String.self, forKey: .propertyImage)
		agentId = try values.decodeIfPresent(Int.self, forKey: .agentId)
		agentName = try values.decodeIfPresent(String.self, forKey: .agentName)
		agentEmail = try values.decodeIfPresent(String.self, forKey: .agentEmail)
		agentAvatar = try values.decodeIfPresent(String.self, forKey: .agentAvatar)
		userId = try values.decodeIfPresent(Int.self, forKey: .userId)
		userName = try values.decodeIfPresent(String.self, forKey: .userName)
		userEmail = try values.decodeIfPresent(String.self, forKey: .userEmail)
		userAvatar = try values.decodeIfPresent(String.self, forKey: .userAvatar)
        roomType = try values.decodeIfPresent(String.self, forKey: .roomType)
	}
}
