//
//  File.swift
//  
//
//  Created by Jamil Nawaz on 03/11/2023.
//

import Foundation

public class PaymentInstrumentsSingleUseToken: WebServiceConfiguration {
    public typealias Response = SingleUseTokenResponse
    
    public var baseUrl: URL = URL(string: apiBaseUrl)!
    public var pathComponents: [String] = [
        "v1/payment-instruments/single-use"
    ]
    public var additionalHeaders: [String : String]?
    public var method: HTTPMethod = .post
    public var requestBody: Data?
    public var contentType: ContentType = .json
    
    public init(additionalHeaders: [String : String]? = nil, requestBody: Data? = nil) {
        self.additionalHeaders = additionalHeaders
        self.requestBody = requestBody
    }
}

public struct SingleUseTokenResponse: Codable {
    public let token: String?
    public let id: String?
    public let tokenType: String?
    public let metadata: [String: String?]?
    public let nameOnCard: String?
    public let pan: String?
    public let expiryDate: String?
    public let startDate: String?
    public let issueNumber: String?
    public let customerId: String?
    public let cardType: String?
    public let fingerprint: String?
    
}
