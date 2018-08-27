import Foundation
import SwiftCLI

public final class CommandLineTool {
    private let arguments: [String]
    
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        let escape = CLI(name: "commandlinetool", version: "0.0.1")
        escape.commands = [CleanCommand()]
        _ = escape.go()
    }
}
