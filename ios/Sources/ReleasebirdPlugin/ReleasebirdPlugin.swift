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
        CAPPluginMethod(name: "initialize", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ReleasebirdCapacitor()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func initialize(_ call: CAPPluginCall) {
        let apiKey = call.getString("apiKey") ?? ""
        print(call)
        //let showButton = call.getBool("showButton") ?? true
        call.resolve([
            "value": implementation.initialize(apiKey)
        ])
    }


}
