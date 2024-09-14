import Foundation
import Releasebird

@objc public class ReleasebirdCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    @objc public func initialize(_ apiKey: String, showButton: Bool) -> Void {
           //var showButtonValue: ObjCBool = ObjCBool(showButton)
           var showButtonValue: ObjCBool = ObjCBool(showButton)
           Releasebird.sharedInstance().initialize(apiKey, showButton: &showButtonValue)
    }
    
    @objc public func showWidget() {
        Releasebird.sharedInstance().showWidget();
    }
    
    @objc public func identify(_ identifyJson: NSDictionary) -> Void {
        Releasebird.sharedInstance().identify(identifyJson);
    }
}
