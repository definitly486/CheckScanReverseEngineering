package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class o implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ TJAdUnitJSBridge b;

    public o(TJAdUnitJSBridge tJAdUnitJSBridge, String str) {
        this.b = tJAdUnitJSBridge;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.b.b.getTextZoom(new n(this));
        } catch (Exception unused) {
            this.b.invokeJSCallback(this.a, Float.valueOf(1.0f));
        }
    }
}
