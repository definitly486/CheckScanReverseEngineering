package com.google.android.gms.internal.p000authapi;

import android.util.Base64;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes4.dex */
public final class zbaw {
    public static final SecureRandom a = new SecureRandom();

    public static String zba() {
        byte[] bArr = new byte[16];
        a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
