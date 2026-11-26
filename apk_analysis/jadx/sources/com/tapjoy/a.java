package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ TJActivity b;

    public a(TJActivity tJActivity, boolean z) {
        this.b = tJActivity;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.a;
        TJActivity tJActivity = this.b;
        if (z) {
            tJActivity.d.setVisibility(0);
        } else {
            tJActivity.d.setVisibility(4);
        }
    }
}
