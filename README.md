# TelegramSwift

A lightweight Swift wrapper for the [Telegram Bot API](https://core.telegram.org/bots/api#sendmessage).

## Features

- Basic error handling
- Simple integration with Swift applications

## Installation

Use [Swift Package Manager](https://swift.org/package-manager/) to add the dependency:

```swift
.package(url: "https://github.com/Onnwen/telegram-swift.git", from: "1.0.0")
```

Then add "TelegramSwift" as a dependency for your target.

## Usage

```swift
do {
    let telegram = try TelegramClient(botToken: "your-bot-token")
        
    try await telegram.approveChatJoinRequest(
        .init(
            chat_id: .init(value1: 1),
            user_id: 1
        )
    )
} catch {
    // handle error
}
```
