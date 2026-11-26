package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements Runnable {
    public final /* synthetic */ TJTaskHandler a;
    public final /* synthetic */ k b;

    public f(k kVar, TJTaskHandler tJTaskHandler) {
        this.b = kVar;
        this.a = tJTaskHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Float fValueOf = Float.valueOf(1.0f);
        try {
            TJWebView tJWebView = this.b.a.e;
            if (tJWebView == null || tJWebView.getSettings() == null) {
                this.a.onComplete(fValueOf);
            } else {
                this.a.onComplete(Float.valueOf(this.b.a.e.getSettings().getTextZoom() / 100.0f));
            }
        } catch (Exception e) {
            TapjoyLog.d("Error getting text zoom: " + e.getMessage());
            this.a.onComplete(fValueOf);
        }
    }
}
