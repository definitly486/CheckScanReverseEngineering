package com.google.android.gms.internal.auth;

import defpackage.b7b;
import defpackage.kv2;
import defpackage.m96;
import defpackage.m9b;
import defpackage.me0;
import defpackage.mz0;
import defpackage.rz0;
import defpackage.y7b;
import defpackage.yq;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzef implements Iterable, Serializable {
    public static final zzef zzb = new m9b(zzfa.zzd);
    public int b = 0;

    static {
        int i = b7b.a;
    }

    public static int f(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            yq.d(kv2.b(i, "Beginning index: ", " < 0"));
            return 0;
        }
        if (i2 < i) {
            yq.d(rz0.c(i, i2, "Beginning index larger than ending index: ", ", "));
            return 0;
        }
        yq.d(rz0.c(i2, i3, "End index: ", " >= "));
        return 0;
    }

    public static zzef zzk(byte[] bArr, int i, int i2) {
        f(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new m9b(bArr2);
    }

    public abstract byte a(int i);

    public abstract int b(int i, int i2);

    public abstract String d(Charset charset);

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iB = this.b;
        if (iB == 0) {
            int iZzd = zzd();
            iB = b(iZzd, iZzd);
            if (iB == 0) {
                iB = 1;
            }
            this.b = iB;
        }
        return iB;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new y7b(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return me0.d(mz0.a(zzd(), "<ByteString@", hexString, " size=", " contents=\""), zzd() <= 50 ? m96.h(this) : m96.h(zzf(0, 47)).concat("..."), "\">");
    }

    public abstract byte zza(int i);

    public abstract int zzd();

    public abstract zzef zzf(int i, int i2);

    public abstract boolean zzh();

    public final String zzl(Charset charset) {
        return zzd() == 0 ? "" : d(charset);
    }
}
