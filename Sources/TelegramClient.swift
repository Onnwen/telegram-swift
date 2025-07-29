//
//  TelegramClient.swift
//  telegram-swift
//
//  Created by Onnwen Cassitto on 27/07/25.
//

import Foundation
import OpenAPIRuntime

public final class TelegramClient: Sendable {
    private let botToken: String
    private let client: APIProtocol

    public init(botToken: String) throws {
        self.botToken = botToken
        client = try getConfiguredClient(botToken: botToken)
    }

    public func approveChatJoinRequest(_ body: Operations.post_sol_approveChatJoinRequest.Input.Body.jsonPayload) async throws {
        let output = try await client.post_sol_approveChatJoinRequest(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok:
            return
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }
    
    public func declineChatJoinRequest(_ body: Operations.post_sol_declineChatJoinRequest.Input.Body.jsonPayload) async throws {
        let output = try await client.post_sol_declineChatJoinRequest(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok:
            return
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }
    
    public func banChatMember(_ body: Operations.post_sol_banChatMember.Input.Body.jsonPayload) async throws {
        let output = try await client.post_sol_banChatMember(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok:
            return
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }
    
    public func unbanChatMember(_ body: Operations.post_sol_unbanChatMember.Input.Body.jsonPayload) async throws {
        let output = try await client.post_sol_unbanChatMember(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok:
            return
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }
    
    public func setWebhook(_ body: Operations.post_sol_setWebhook.Input.Body.jsonPayload) async throws {
        let output = try await client.post_sol_setWebhook(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok:
            return
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }
    
    public func getChatMember(_ body: Operations.post_sol_getChatMember.Input.Body.jsonPayload) async throws -> Bool {
        let output = try await client.post_sol_getChatMember(
            .init(
                body: .json(
                    body
                )
            )
        )
        
        switch output {
        case .ok(let response):
            guard let result = try? response.body.json.value2.result else { return false }
            return result.value1 != nil || result.value2 != nil || result.value3 != nil || result.value4 != nil
        case .badRequest(let response):
            throw TelegramError.badRequest(description: (try? response.body.json.value2.description) ?? "")
        case .conflict(let response):
            throw TelegramError.confliect(description: (try? response.body.json.value2.description) ?? "")
        case .unauthorized(let response):
            throw TelegramError.unauthorized(description: (try? response.body.json.value2.description) ?? "")
        case .forbidden(let response):
            throw TelegramError.forbidden(description: (try? response.body.json.value2.description) ?? "")
        case .notFound(let response):
            throw TelegramError.notFound(description: (try? response.body.json.value2.description) ?? "")
        case .tooManyRequests(let response):
            throw TelegramError.tooManyRequests(description: (try? response.body.json.value2.description) ?? "")
        case .serverError(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        case .default(statusCode: let statusCode, let response):
            throw TelegramError.serverError(statusCode: statusCode, description: (try? response.body.json.value2.description) ?? "")
        }
    }

    enum TelegramError: Error {
        case badRequest(description: String)
        case confliect(description: String)
        case unauthorized(description: String)
        case forbidden(description: String)
        case notFound(description: String)
        case tooManyRequests(description: String)
        case failedToParseResponse
        case serverError(statusCode: Int, description: String)
    }
}
