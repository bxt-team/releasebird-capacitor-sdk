import Foundation
import Releasebird

@objc public class ReleasebirdCapacitor: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
    
    @objc public func initialize(_ apiKey: String) -> Void {
            print("Hello INIT");
            print("ApiKey:");
            print(apiKey);
           //var showButtonValue: ObjCBool = ObjCBool(showButton)
           var showButtonValue: ObjCBool = ObjCBool(true)
           // Übergabe des Zeigers auf den veränderbaren Wert
           Releasebird.sharedInstance().initialize(apiKey, showButton: &showButtonValue)
    }
}
