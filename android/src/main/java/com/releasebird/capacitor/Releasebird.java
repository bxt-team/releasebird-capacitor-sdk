package com.releasebird.capacitor;

import android.app.Application;
import android.util.Log;

import java.util.Map;

public class Releasebird {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }

    public void initialize(String apiKey, Application application) {
        com.releasebird.releasebird_sdk.Releasebird.init(apiKey, application);
    }

    public void showWidget() {
        com.releasebird.releasebird_sdk.Releasebird.getInstance().showWidget();
    }

    public void logout(Application application) {
        com.releasebird.releasebird_sdk.Releasebird.getInstance().logout(application);
    }

    public void identify(Map<String, Object> identifyJson, String hash) {
        com.releasebird.releasebird_sdk.Releasebird.getInstance().identify(identifyJson, hash);
    }



}
