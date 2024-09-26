import Foundation
import Releasebird

@objc public class ReleasebirdCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    @objc public func initialize(_ apiKey: String, showButton: Bool) -> Void {
           Releasebird.sharedInstance().initialize(apiKey, showButton: showButton)
    }
    
    @objc public func showWidget() {
        Releasebird.sharedInstance().showWidget();
    }

    @objc public func logout() {
            Releasebird.sharedInstance().logout();
    }
    
    @objc public func identify(_ identifyJson: NSDictionary) -> Void {
        if let properties = identifyJson["properties"] as? NSDictionary {
                // Übergibt nur das `properties`-Property an die identify-Methode von Releasebird
                Releasebird.sharedInstance().identify(properties)
            } else {
                // Fallback, falls `properties` nicht im `identifyJson` vorhanden ist
                print("Error: 'properties' not found in identifyJson")
            }
    }
}
