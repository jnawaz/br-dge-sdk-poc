//
//  NetworkManager.swift
//  
//
//  Created by Jamil Nawaz on 17/10/2023.
//

import Foundation

internal protocol NetworkSession {
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: NetworkSession {

    public func loadData(from request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let task = dataTask(with: request, completionHandler: completionHandler)
        task.resume()
    }
}

internal class NetworkManager {
    internal let session: NetworkSession
    
    internal init(session: NetworkSession = URLSession.shared) {
        self.session = session
    }
    
    internal func request(_ request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        session.loadData(from: request, completionHandler: completion)
    }
}
