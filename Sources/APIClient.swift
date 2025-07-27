//
//  APIClient.swift
//  telegram-swift
//
//  Created by Onnwen Cassitto on 27/07/25.
//

import Foundation
import HTTPTypes
import OpenAPIRuntime
import OpenAPIURLSession

func getConfiguredClient(botToken: String) throws -> APIProtocol {
    try Client(
        serverURL: Servers.Server1.url(token: botToken),
        transport: URLSessionTransport(),
    )
}
