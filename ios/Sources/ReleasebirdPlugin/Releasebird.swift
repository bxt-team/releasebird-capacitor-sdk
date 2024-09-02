import Foundation

@objc public class Releasebird: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
