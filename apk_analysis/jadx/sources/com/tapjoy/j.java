package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ k b;

    public j(k kVar, boolean z) {
        this.b = kVar;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJAdUnitActivity tJAdUnitActivity = this.b.a.b;
        if (tJAdUnitActivity != null) {
            tJAdUnitActivity.setCloseButtonClickable(this.a);
        } else {
            TapjoyLog.d("Cannot setCloseButtonClickable -- TJAdUnitActivity is null");
        }
    }
}
