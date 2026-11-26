package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 implements Runnable {
    public final /* synthetic */ TJTaskHandler a;
    public final /* synthetic */ TJWebViewActivity.BridgeDelegate b;

    public o0(TJWebViewActivity.BridgeDelegate bridgeDelegate, TJTaskHandler tJTaskHandler) {
        this.b = bridgeDelegate;
        this.a = tJTaskHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Float fValueOf = Float.valueOf(1.0f);
        try {
            if (this.b.getWebView() == null || this.b.getWebView().getSettings() == null) {
                this.a.onComplete(fValueOf);
            } else {
                this.a.onComplete(Float.valueOf(this.b.getWebView().getSettings().getTextZoom() / 100.0f));
            }
        } catch (Exception e) {
            TapjoyLog.d("Error getting text zoom: " + e.getMessage());
            this.a.onComplete(fValueOf);
        }
    }
}
