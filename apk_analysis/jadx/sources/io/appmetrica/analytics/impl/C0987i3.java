package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0987i3 {
    public final C0961h3 a;
    public final GZIPCompressor b;

    public C0987i3() {
        this(new C0961h3(), new GZIPCompressor());
    }

    public final byte[] a(byte[] bArr) {
        try {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            C0961h3 c0961h3 = this.a;
            byte[] bytes = "hBnBQbZrmjPXEWVJ".getBytes();
            c0961h3.getClass();
            AESEncrypter aESEncrypter = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bytes, bArrCopyOfRange);
            if (bArr != null && bArr.length != 0) {
                return this.b.uncompress(aESEncrypter.decrypt(bArr, 16, bArr.length - 16));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public C0987i3(C0961h3 c0961h3, GZIPCompressor gZIPCompressor) {
        this.a = c0961h3;
        this.b = gZIPCompressor;
    }
}
