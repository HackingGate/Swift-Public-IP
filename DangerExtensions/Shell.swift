// from https://github.com/417-72KI/danger-swiftlint

import Foundation

@discardableResult
func shell(_ args: String...) -> String? {
    let task = Process()
    let pipe = Pipe()
    
    task.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    task.arguments = args
    task.standardOutput = pipe
    task.standardError = pipe
    do {
        try task.run()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: data, encoding: .utf8)
    } catch {
        print(error)
        return nil
    }
}
