package com.tapjoy;

import android.graphics.Color;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJTaskHandler b;
    public final /* synthetic */ TJWebViewActivity.BridgeDelegate c;

    public l0(TJWebViewActivity.BridgeDelegate bridgeDelegate, String str, TJTaskHandler tJTaskHandler) {
        this.c = bridgeDelegate;
        this.a = str;
        this.b = tJTaskHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TJWebViewActivity.this.e.setBackgroundColor(Color.parseColor(this.a));
        this.b.onComplete(Boolean.TRUE);
    }
}
