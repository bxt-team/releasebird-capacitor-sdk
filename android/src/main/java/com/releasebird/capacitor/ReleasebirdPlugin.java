package com.releasebird.capacitor;

import android.util.Log;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@CapacitorPlugin(name = "Releasebird")
public class ReleasebirdPlugin extends Plugin {

    private Releasebird implementation = new Releasebird();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }


    @PluginMethod
    public void initialize(PluginCall call) {
        String apiKey = call.getString("apiKey");
        implementation.initialize(apiKey, getActivity().getApplication());
        call.resolve();
    }

    @PluginMethod
    public void showWidget(PluginCall call) {
        implementation.showWidget();
        call.resolve();
    }

    @PluginMethod
    public void identify(PluginCall call) {
        Log.i("IDENTIFY", "bin in identify");
        try {
            String hash = call.getString("hash");

            Log.i("HASH", hash);
            JSObject identifyJson = call.getObject("identify");
            Log.i("JSONOBJ", identifyJson.toString());

            HashMap<String, Object> hashMap = new HashMap<>();

            JSONObject properties = identifyJson.getJSONObject("properties");

            // Get the iterator from the keys
            Iterator<String> keysIterator = properties.keys();

            // Convert Iterator to a Set to use foreach loop
            Set<String> keysSet = new HashSet<>();
            while (keysIterator.hasNext()) {
                keysSet.add(keysIterator.next());
            }

            // Iterate through the keys using foreach
            for (String key : keysSet) {
                try {
                    Object value = properties.get(key);
                    hashMap.put(key, value);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            implementation.identify(hash, hashMap);
            call.resolve();
        } catch (JSONException e) {
            call.reject("json problem");
        }


    }
}
