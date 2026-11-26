package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public r(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.b;
        TJSplitWebView tJSplitWebView = tJAdUnitJSBridge.c;
        String str = this.a;
        if (tJSplitWebView != null) {
            tJAdUnitJSBridge.invokeJSCallback(str, Boolean.TRUE);
        } else {
            tJAdUnitJSBridge.invokeJSCallback(str, Boolean.FALSE);
        }
    }
}
