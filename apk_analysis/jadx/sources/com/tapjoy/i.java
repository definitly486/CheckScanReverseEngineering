package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ k b;

    public i(k kVar, boolean z) {
        this.b = kVar;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitActivity tJAdUnitActivity = this.b.a.b;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.setCloseButtonVisibility(this.a);
        } else {
            TapjoyLog.d("Cannot setCloseButtonVisible -- TJAdUnitActivity is null");
        }
    }
}
