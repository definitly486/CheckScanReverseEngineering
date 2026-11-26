package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class p implements TJTaskHandler {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public p(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // com.tapjoy.TJTaskHandler
    public final void onComplete(Object obj) {
        this.b.invokeJSCallback(this.a, (Boolean) obj);
    }
}
