//
//  File.swift
//  
//
//  Created by Sietse Guijt on 11/06/2024.
//

import Foundation

public struct SGBackendServerClient {
    
    public var clientPort: String
    public var clientUrl: String
    public private(set) var baseUrl: URL
    
    public init(clientUrl: String = "http://127.0.0.1", clientPort: String = "8080") {
        self.clientPort = clientPort
        self.clientUrl = clientUrl
        self.baseUrl = URL(string: "\(self.clientUrl):\(self.clientPort)")!
    }
    
    @available(macOS 12.0, *)
    public func fetchData(endPoint: String) async throws -> String {
        let url = self.baseUrl.appendingPathComponent(endPoint)
        do {
            let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
            guard let responseBody = String(data: data, encoding: .utf8) else {
                throw Errors.invalidResponseEncoding
            }
            return responseBody
        } catch {
            print("Could not retrieve data from server")
            return error.localizedDescription
        }
        
    }

    enum Errors: Error {
        case invalidResponseEncoding
    }
}
