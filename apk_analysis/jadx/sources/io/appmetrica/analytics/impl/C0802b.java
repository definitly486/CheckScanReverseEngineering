package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0802b implements S8 {
    public final AESEncrypter a;

    public C0802b(C0776a c0776a) {
        this(new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c0776a.b(), c0776a.a()));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    @Override // io.appmetrica.analytics.impl.S8
    public final K8 a(C0783a6 c0783a6) {
        String strEncodeToString;
        String value = c0783a6.getValue();
        if (TextUtils.isEmpty(value)) {
            strEncodeToString = null;
        } else {
            try {
                byte[] bArrEncrypt = this.a.encrypt(value.getBytes("UTF-8"));
                if (bArrEncrypt != null) {
                    strEncodeToString = Base64.encodeToString(bArrEncrypt, 0);
                } else {
                    strEncodeToString = null;
                }
            } catch (Throwable unused) {
            }
        }
        c0783a6.setValue(strEncodeToString);
        return new K8(c0783a6, U8.AES_VALUE_ENCRYPTION);
    }

    public C0802b() {
        this(new C0776a(Fa.k().g()));
    }

    public C0802b(AESEncrypter aESEncrypter) {
        this.a = aESEncrypter;
    }

    @Override // io.appmetrica.analytics.impl.S8
    public final byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr != null && bArr.length > 0) {
            try {
                return this.a.decrypt(Base64.decode(bArr, 0));
            } catch (Throwable unused) {
            }
        }
        return bArr2;
    }

    public final U8 a() {
        return U8.AES_VALUE_ENCRYPTION;
    }
}
