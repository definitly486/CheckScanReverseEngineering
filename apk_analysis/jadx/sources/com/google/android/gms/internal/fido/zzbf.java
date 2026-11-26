package com.google.android.gms.internal.fido;

import defpackage.nwa;
import defpackage.rwa;
import defpackage.xg;
import defpackage.ywa;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbf {
    public static final nwa a;

    static {
        new rwa("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new rwa("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new ywa("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new ywa("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        a = new nwa();
    }

    public static zzbf zzd() {
        return a;
    }

    public abstract void a(StringBuilder sb, byte[] bArr, int i);

    public abstract int b(int i);

    public final String zze(byte[] bArr, int i, int i2) {
        zzam.zze(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(b(i2));
        try {
            a(sb, bArr, i2);
            return sb.toString();
        } catch (IOException e) {
            xg.d(e);
            return null;
        }
    }
}
