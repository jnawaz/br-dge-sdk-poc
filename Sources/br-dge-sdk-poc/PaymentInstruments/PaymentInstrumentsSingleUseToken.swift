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
    public var httpBody: Data?
}

public struct SingleUseTokenResponse: Codable {
    let token: String?
    let id: String?
    let tokenType: String?
    let metadata: [String: String?]?
    let nameOnCard: String?
    let pan: String?
    let expiryDate: String?
    let startDate: String?
    let issueNumber: String?
    let customerId: String?
    let cardType: String?
    let fingerprint: String?
    
}
