import Foundation

@objc public class Hello: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
