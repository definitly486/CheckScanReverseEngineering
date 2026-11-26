package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ k b;

    public g(k kVar, float f) {
        this.b = kVar;
        this.a = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJWebView tJWebView = this.b.a.e;
        if (tJWebView == null || tJWebView.getSettings() == null) {
            return;
        }
        this.b.a.e.getSettings().setTextZoom((int) (this.a * 100.0f));
    }
}
