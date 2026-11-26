package io.appmetrica.analytics.internal.js;

import android.webkit.JavascriptInterface;
import io.appmetrica.analytics.impl.C1370x1;

/* JADX INFO: loaded from: classes5.dex */
public class AppMetricaInitializerJsInterface {
    private final C1370x1 a;

    public AppMetricaInitializerJsInterface(C1370x1 c1370x1) {
        this.a = c1370x1;
    }

    @JavascriptInterface
    public void init(String str) {
        this.a.c(str);
    }
}
