package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 implements Runnable {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ TJWebViewActivity.BridgeDelegate b;

    public m0(TJWebViewActivity.BridgeDelegate bridgeDelegate, boolean z) {
        this.b = bridgeDelegate;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.a;
        TJWebViewActivity.BridgeDelegate bridgeDelegate = this.b;
        if (z) {
            TJWebViewActivity.this.c.setVisibility(0);
        } else {
            TJWebViewActivity.this.c.setVisibility(4);
        }
    }
}
