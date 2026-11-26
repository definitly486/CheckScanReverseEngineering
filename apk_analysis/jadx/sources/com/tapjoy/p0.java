package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ TJWebViewActivity.BridgeDelegate b;

    public p0(TJWebViewActivity.BridgeDelegate bridgeDelegate, float f) {
        this.b = bridgeDelegate;
        this.a = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b.getWebView() == null || this.b.getWebView().getSettings() == null) {
            return;
        }
        this.b.getWebView().getSettings().setTextZoom((int) (this.a * 100.0f));
    }
}
