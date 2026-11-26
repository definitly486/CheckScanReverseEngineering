package com.tapjoy;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends WebChromeClient {
    public final /* synthetic */ TJAdUnit a;

    public e(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        TJAdUnit tJAdUnit = this.a;
        TJAdUnitJSBridge tJAdUnitJSBridge = tJAdUnit.c;
        if (tJAdUnitJSBridge == null || !tJAdUnitJSBridge.closeRequested) {
            return true;
        }
        String[] strArr = {"Uncaught", "uncaught", "Error", "error", "not defined"};
        if (tJAdUnit.b == null) {
            return true;
        }
        for (int i = 0; i < 5; i++) {
            if (consoleMessage.message().contains(strArr[i])) {
                this.a.b.a(false);
                return true;
            }
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        TapjoyLog.d(str2);
        return false;
    }
}
