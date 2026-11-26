package com.tapjoy.internal;

import com.tapjoy.TJConnectListener;
import defpackage.mi2;

/* JADX INFO: loaded from: classes4.dex */
public class TJConnectListenerNative extends TJConnectListener {
    public final long a;

    public TJConnectListenerNative(long j) {
        if (j != 0) {
            this.a = j;
        } else {
            mi2.b();
            throw null;
        }
    }

    public static Object create(long j) {
        return new TJConnectListenerNative(j);
    }

    private static native void onConnectFailureNative(long j, int i, String str);

    private static native void onConnectSuccessNative(long j);

    private static native void onConnectWarningNative(long j, int i, String str);

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectFailure(int i, String str) {
        onConnectFailureNative(this.a, i, str);
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectSuccess() {
        onConnectSuccessNative(this.a);
    }

    @Override // com.tapjoy.TJConnectListener, com.tapjoy.TJConnectInterface
    public final void onConnectWarning(int i, String str) {
        onConnectWarningNative(this.a, i, str);
    }
}
