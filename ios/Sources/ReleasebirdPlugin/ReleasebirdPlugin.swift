import Foundation
import Capacitor
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ReleasebirdPlugin)
public class ReleasebirdPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ReleasebirdPlugin"
    public let jsName = "Releasebird"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "initialize", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "showWidget", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "identify", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "logout", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ReleasebirdCapacitor()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func initialize(_ call: CAPPluginCall) {
    DispatchQueue.global(qos: .userInitiated).async {
     DispatchQueue.main.async { [self] in
        let apiKey = call.getString("apiKey") ?? ""
        let showButton = call.getBool("showButton") ?? true
        implementation.initialize(apiKey, showButton: showButton);
        }
        }
        call.resolve();
    }
    
    @objc func showWidget(_ call: CAPPluginCall) {
    DispatchQueue.global(qos: .userInitiated).async {
     DispatchQueue.main.async { [self] in
        implementation.showWidget()
        }

    }
    call.resolve()
    }

    @objc func logout(_ call: CAPPluginCall) {
        DispatchQueue.global(qos: .userInitiated).async {
         DispatchQueue.main.async { [self] in
            implementation.logout()
            }

        }
        call.resolve()
    }
    
    func convertJSObjectToNSDictionary(jsObject: JSObject?) -> NSDictionary? {
        guard let jsObject = jsObject else {
            return nil
        }
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: jsObject, options: [])
            let dictionary = try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
            return dictionary
        } catch {
            print("Error converting JSObject: \(error.localizedDescription)")
            return nil
        }
    }
    
    @objc func identify(_ call: CAPPluginCall) {
        guard let identifyJson = call.getObject("identify") else {
            call.reject("identify is missing")
            return
        }
        guard let dictionary = convertJSObjectToNSDictionary(jsObject: identifyJson) else {
            call.reject("Failed to convert JSObject to NSDictionary")
            return
        }
        let hash = call.getString("hash") ?? ""
        implementation.identify(dictionary, andHash: hash)
        call.resolve()
    }

}
