//
//  ProDraftPreviewFacilities.swift
//  Starproperty Agent
//
//  Created by fireworks on 16/07/2019.
//  Copyright © 2019 Fireworks Solutions Sdn Bhd. All rights reserved.
//

import Foundation

public struct ProDraftPreviewFacilities : Codable {
	public let value : String?
	public let mobile_image : String?
    
    enum CodingKeys: String, CodingKey {
        
        case value = "value"
        case mobile_image = "mobile_image"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        value = try values.decodeIfPresent(String.self, forKey: .value)
        mobile_image = try values.decodeIfPresent(String.self, forKey: .mobile_image)
    }
    
}
