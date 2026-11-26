package com.tapjoy.internal;

import com.tapjoy.TJAwardCurrencyListener;
import defpackage.mi2;

/* JADX INFO: loaded from: classes4.dex */
public class TJAwardCurrencyListenerNative implements TJAwardCurrencyListener {
    public final long a;

    public TJAwardCurrencyListenerNative(long j) {
        if (j != 0) {
            this.a = j;
        } else {
            mi2.b();
            throw null;
        }
    }

    public static Object create(long j) {
        return new TJAwardCurrencyListenerNative(j);
    }

    private static native void onAwardCurrencyResponseFailureNative(long j, String str);

    private static native void onAwardCurrencyResponseNative(long j, String str, int i);

    @Override // com.tapjoy.TJAwardCurrencyListener
    public final void onAwardCurrencyResponse(String str, int i) {
        onAwardCurrencyResponseNative(this.a, str, i);
    }

    @Override // com.tapjoy.TJAwardCurrencyListener
    public final void onAwardCurrencyResponseFailure(String str) {
        onAwardCurrencyResponseFailureNative(this.a, str);
    }
}
