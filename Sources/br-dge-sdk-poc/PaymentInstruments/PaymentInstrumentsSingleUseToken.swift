//
//  File.swift
//  
//
//  Created by Jamil Nawaz on 03/11/2023.
//

import Foundation

public class PaymentInstrumentsSingleUseToken: WebServiceConfiguration {
    typealias Response = SingleUseTokenResponse
    
    var baseUrl: URL = URL(string: apiBaseUrl)!
    var pathComponents: [String] = [
        "v1/payment-instruments/single-use"
    ]
    var additionalHeaders: [String : String]?

}

struct SingleUseTokenResponse: Codable {
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
