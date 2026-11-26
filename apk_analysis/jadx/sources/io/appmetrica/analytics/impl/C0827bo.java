package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0827bo implements Co {
    public final T8 a;

    public C0827bo() {
        this(new T8());
    }

    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        byte[] bArrDecompressBase64GzipAsBytes = new byte[0];
        try {
            bArrDecompressBase64GzipAsBytes = Base64Utils.decompressBase64GzipAsBytes(z8.b);
        } catch (Throwable unused) {
        }
        byte[] bArrA = ((S8) this.a.a.a(z8.o)).a(bArrDecompressBase64GzipAsBytes);
        return bArrA == null ? new byte[0] : bArrA;
    }

    public C0827bo(T8 t8) {
        this.a = t8;
    }

    public final T8 a() {
        return this.a;
    }
}
