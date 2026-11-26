package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements Runnable {
    public final /* synthetic */ TJAdUnitActivity a;

    public l(TJAdUnitActivity tJAdUnitActivity) {
        this.a = tJAdUnitActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.f.getCloseRequested()) {
            TapjoyLog.d("Did not receive callback from content. Closing ad.");
            this.a.finish();
        }
    }
}
