//
//  File.swift
//  
//
//  Created by Sietse Guijt on 11/06/2024.
//

import Foundation
//import FoundationNetworking

public struct SGBackendServerClient {
    
    public var clientPort: String
    public var clientUrl: String
    public private(set) var baseUrl: URL
    
    public init(clientUrl: String = "http://127.0.0.1", clientPort: String = "8080") {
        self.clientPort = clientPort
        self.clientUrl = clientUrl
        self.baseUrl = URL(string: "\(self.clientUrl):\(self.clientPort)")!
    }
    
    //@available(macOS 12.0, *)
    public func fetchData(endPoint: String) async throws -> String {
        let url = self.baseUrl.appendingPathComponent(endPoint)
        return createHttpGetRequest(url: url.absoluteString)
    }

    enum Errors: Error {
        case invalidResponseEncoding
    }

    private func createHttpGetRequest(url: String) -> String {
        let url = URL(string: url)!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        // Add any additional headers or parameters if needed
        // ...
        let requestBody = String(data: request.httpBody ?? Data(), encoding: .utf8) ?? ""
        return requestBody
    }
}
