package com.google.android.gms.internal.auth;

import defpackage.cg;
import defpackage.eab;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfa {
    public static final Charset a;
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzej zzf;

    static {
        Charset.forName("US-ASCII");
        a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        eab eabVar = new eab();
        try {
            int i = eabVar.a;
            if (i > 0) {
                eabVar.a = i;
            } else {
                eabVar.a = 0;
            }
            zzf = eabVar;
        } catch (zzfb e) {
            cg.h(e);
        }
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, a);
    }
}
