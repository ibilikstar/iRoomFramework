
import Foundation

public struct PropertyDraftPreviewData : Codable {
    
	public let id : Int?
	public let user_id : Int?
	public let listing_type : String?
	public let property_status : String?
	public let property_type : String?
	public let land_title : String?
	public let build_up : Int?
	public let land_area : Int?
	public let bedroom : Int?
	public let bathroom : Int?
	public let car_park : Int?
	public let property_id : Int?
	public let facilities : [ProDraftPreviewFacilities]?
	public let keywords : String?
	public let build_up_wformat : String?
	public let psf : String?
	public let pricing : String?
	public let shoutout : String?
	public let package : String?
	public let verification : String?
	public let photo : [String]?
	public let cover_photo : String?
	public let property_gallery : [String]?
	public let location : ProDraftPreviewLocation?
	public let about_property : ProDraftPreviewAboutProperty?
	public let nearby_amenities : [NearByDetailList]?
	public let top_performance_ads : ProDraftPreviewTopPerformanceAds?
	public let top_performing_listings : [ProDraftPreviewTopPerformingListings]?

	enum CodingKeys: String, CodingKey {

        case id = "id"
        case user_id = "user_id"
        case listing_type = "listing_type"
        case property_status = "property_status"
        case property_type = "property_type"
        case land_title = "land_title"
        case build_up = "build_up"
        case land_area = "land_area"
        case bedroom = "bedroom"
        case bathroom = "bathroom"
        case car_park = "car_park"
        case property_id = "property_id"
        case facilities = "facilities"
        case keywords = "keywords"
        case psf = "psf"
        case  build_up_wformat = "build_up_wformat"
        case pricing = "pricing"
        case shoutout = "shoutout"
        case package = "package"
        case verification = "verification"
        case photo = "photo"
        case cover_photo = "cover_photo"
        case property_gallery = "property_gallery"
        case location = "location"
        case about_property = "about_property"
        case nearby_amenities = "nearby_amenities"
        case top_performance_ads = "top_performance_ads"
        case top_performing_listings = "top_performing_listings"
	}

	public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        user_id = try values.decodeIfPresent(Int.self, forKey: .user_id)
        listing_type = try values.decodeIfPresent(String.self, forKey: .listing_type)
        property_status = try values.decodeIfPresent(String.self, forKey: .property_status)
        property_type = try values.decodeIfPresent(String.self, forKey: .property_type)
        land_title = try values.decodeIfPresent(String.self, forKey: .land_title)
        build_up = try values.decodeIfPresent(Int.self, forKey: .build_up)
        land_area = try values.decodeIfPresent(Int.self, forKey: .land_area)
        bedroom = try values.decodeIfPresent(Int.self, forKey: .bedroom)
        bathroom = try values.decodeIfPresent(Int.self, forKey: .bathroom)
        car_park = try values.decodeIfPresent(Int.self, forKey: .car_park)
        property_id = try values.decodeIfPresent(Int.self, forKey: .property_id)
        facilities = try values.decodeIfPresent([ProDraftPreviewFacilities].self, forKey: .facilities)
        keywords = try values.decodeIfPresent(String.self, forKey: .keywords)
        psf = try values.decodeIfPresent(String.self, forKey: .psf)
        pricing = try values.decodeIfPresent(String.self, forKey: .pricing)
        shoutout = try values.decodeIfPresent(String.self, forKey: .shoutout)
        package = try values.decodeIfPresent(String.self, forKey: .package)
        verification = try values.decodeIfPresent(String.self, forKey: .verification)
        photo = try values.decodeIfPresent([String].self, forKey: .photo)
        cover_photo = try values.decodeIfPresent(String.self, forKey: .cover_photo)
        build_up_wformat = try values.decodeIfPresent(String.self, forKey: .build_up_wformat)
        property_gallery = try values.decodeIfPresent([String].self, forKey: .property_gallery)
        location = try values.decodeIfPresent(ProDraftPreviewLocation.self, forKey: .location)
        about_property = try values.decodeIfPresent(ProDraftPreviewAboutProperty.self, forKey: .about_property)
        nearby_amenities = try values.decodeIfPresent([NearByDetailList].self, forKey: .nearby_amenities)
        top_performance_ads = try values.decodeIfPresent(ProDraftPreviewTopPerformanceAds.self, forKey: .top_performance_ads)
        top_performing_listings = try values.decodeIfPresent([ProDraftPreviewTopPerformingListings].self, forKey: .top_performing_listings)
	}

}
