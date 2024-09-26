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
    
    @objc public func identify(_ identifyJson: NSDictionary, andHash: String) -> Void {
        print(identifyJson);
       Releasebird.sharedInstance().identify(identifyJson, hash: andHash);
    }
}
