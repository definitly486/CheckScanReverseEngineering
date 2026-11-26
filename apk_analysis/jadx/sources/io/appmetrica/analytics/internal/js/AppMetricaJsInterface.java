package io.appmetrica.analytics.internal.js;

import android.webkit.JavascriptInterface;
import io.appmetrica.analytics.impl.C1370x1;

/* JADX INFO: loaded from: classes5.dex */
public class AppMetricaJsInterface {
    private final C1370x1 a;

    public AppMetricaJsInterface(C1370x1 c1370x1) {
        this.a = c1370x1;
    }

    @JavascriptInterface
    public void reportEvent(String str, String str2) {
        this.a.d(str, str2);
    }
}
