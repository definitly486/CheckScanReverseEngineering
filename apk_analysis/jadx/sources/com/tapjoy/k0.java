package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 implements Runnable {
    public final /* synthetic */ TJWebViewActivity a;

    public k0(TJWebViewActivity tJWebViewActivity) {
        this.a = tJWebViewActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitJSBridge tJAdUnitJSBridge = this.a.g;
        if (tJAdUnitJSBridge == null || !tJAdUnitJSBridge.closeRequested) {
            return;
        }
        TapjoyLog.d("Did not receive callback from content. Closing ad.");
        this.a.finish();
    }
}
