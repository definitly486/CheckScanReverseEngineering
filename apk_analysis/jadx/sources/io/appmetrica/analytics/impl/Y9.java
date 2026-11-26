package io.appmetrica.analytics.impl;

import android.util.Base64;

/* JADX INFO: loaded from: classes5.dex */
public final class Y9 implements S8 {
    @Override // io.appmetrica.analytics.impl.S8
    public final byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    @Override // io.appmetrica.analytics.impl.S8
    public final K8 a(C0783a6 c0783a6) {
        throw new UnsupportedOperationException();
    }

    public final U8 a() {
        return U8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER;
    }
}
