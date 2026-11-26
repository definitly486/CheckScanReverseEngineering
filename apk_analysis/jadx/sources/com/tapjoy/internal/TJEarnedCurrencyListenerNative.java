package com.tapjoy.internal;

import com.tapjoy.TJEarnedCurrencyListener;
import defpackage.mi2;

/* JADX INFO: loaded from: classes4.dex */
public class TJEarnedCurrencyListenerNative implements TJEarnedCurrencyListener {
    public final long a;

    public TJEarnedCurrencyListenerNative(long j) {
        if (j != 0) {
            this.a = j;
        } else {
            mi2.b();
            throw null;
        }
    }

    public static Object create(long j) {
        return new TJEarnedCurrencyListenerNative(j);
    }

    private static native void onEarnedCurrencyNative(long j, String str, int i);

    @Override // com.tapjoy.TJEarnedCurrencyListener
    public final void onEarnedCurrency(String str, int i) {
        onEarnedCurrencyNative(this.a, str, i);
    }
}
