package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class n0 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ TJWebViewActivity.BridgeDelegate b;

    public n0(TJWebViewActivity.BridgeDelegate bridgeDelegate, boolean z) {
        this.b = bridgeDelegate;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJWebViewActivity.this.c.setClickable(this.a);
    }
}
