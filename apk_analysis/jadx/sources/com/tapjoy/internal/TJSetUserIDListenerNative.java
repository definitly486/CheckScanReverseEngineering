package com.tapjoy.internal;

import com.tapjoy.TJSetUserIDListener;
import defpackage.mi2;

/* JADX INFO: loaded from: classes4.dex */
public class TJSetUserIDListenerNative implements TJSetUserIDListener {
    public final long a;

    public TJSetUserIDListenerNative(long j) {
        if (j != 0) {
            this.a = j;
        } else {
            mi2.b();
            throw null;
        }
    }

    public static Object create(long j) {
        return new TJSetUserIDListenerNative(j);
    }

    private static native void onSetUserIDFailureNative(long j, int i, String str);

    private static native void onSetUserIDSuccessNative(long j);

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDFailure(int i, String str) {
        onSetUserIDFailureNative(this.a, i, str);
    }

    @Override // com.tapjoy.TJSetUserIDListener
    public final void onSetUserIDSuccess() {
        onSetUserIDSuccessNative(this.a);
    }
}
