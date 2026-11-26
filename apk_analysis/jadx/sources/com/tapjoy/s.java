package com.tapjoy;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public s(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.b;
        TJSplitWebView tJSplitWebView = tJAdUnitJSBridge.c;
        String str = this.a;
        if (tJSplitWebView == null) {
            if (str != null) {
                tJAdUnitJSBridge.invokeJSCallback(str, Boolean.FALSE);
                return;
            }
            return;
        }
        if (str != null) {
            tJAdUnitJSBridge.invokeJSCallback(str, Boolean.TRUE);
        }
        TJAdUnitJSBridge tJAdUnitJSBridge2 = this.b;
        String str2 = tJAdUnitJSBridge2.splitWebViewCallbackID;
        if (str2 != null) {
            tJAdUnitJSBridge2.invokeJSCallback(str2, Boolean.TRUE);
            tJAdUnitJSBridge2 = this.b;
            tJAdUnitJSBridge2.splitWebViewCallbackID = null;
        }
        ((ViewGroup) tJAdUnitJSBridge2.c.getParent()).removeView(this.b.c);
        this.b.c = null;
    }
}
