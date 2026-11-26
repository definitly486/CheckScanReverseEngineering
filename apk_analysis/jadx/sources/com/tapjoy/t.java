package com.tapjoy;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class t implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public t(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.b;
        TJSplitWebView tJSplitWebView = tJAdUnitJSBridge.c;
        String str = this.a;
        if (tJSplitWebView != null) {
            tJAdUnitJSBridge.invokeJSCallback(str, tJSplitWebView.getLastUrl());
        } else {
            tJAdUnitJSBridge.invokeJSCallback(str, JSONObject.NULL);
        }
    }
}
