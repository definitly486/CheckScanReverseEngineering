package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class x implements Runnable {
    public final /* synthetic */ TJCloseButton a;

    public x(TJCloseButton tJCloseButton) {
        this.a = tJCloseButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.animate().alpha(1.0f).setDuration(500L).setListener(new w(this));
    }
}
