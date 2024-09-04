import Foundation
import Capacitor
import releasebird_ios_sdk
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ReleasebirdPlugin)
public class ReleasebirdPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ReleasebirdPlugin"
    public let jsName = "Releasebird"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = Releasebird()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }


}
