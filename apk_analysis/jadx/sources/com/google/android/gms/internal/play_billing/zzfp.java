package com.google.android.gms.internal.play_billing;

import defpackage.kv2;
import defpackage.me0;
import defpackage.mz0;
import defpackage.ngb;
import defpackage.qfb;
import defpackage.reb;
import defpackage.rz0;
import defpackage.xz2;
import defpackage.ydb;
import defpackage.yq;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfp implements Iterable, Serializable {
    public static final zzfp zza = new qfb(zzgv.zza);
    public int b = 0;

    static {
        int i = ydb.a;
    }

    public static int i(int i, int i2, int i3) {
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

    public static /* bridge */ /* synthetic */ boolean j(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        int i4 = i + i3;
        i(i, i4, bArr.length);
        i(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static zzfp zzk(byte[] bArr, int i, int i2) {
        try {
            i(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new qfb(bArr2);
        } catch (zzhb e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public abstract byte a(int i);

    public abstract int b(int i, int i2);

    public abstract void d(int i, byte[] bArr);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfp)) {
            return false;
        }
        zzfp zzfpVar = (zzfp) obj;
        int iZzd = zzd();
        if (iZzd != zzfpVar.zzd()) {
            return false;
        }
        if (iZzd == 0) {
            return true;
        }
        int i = this.b;
        int i2 = zzfpVar.b;
        if (i == 0 || i2 == 0 || i == i2) {
            return g(zzfpVar);
        }
        return false;
    }

    public abstract void f(ngb ngbVar);

    public abstract boolean g(zzfp zzfpVar);

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
        return new reb(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return me0.d(mz0.a(zzd(), "<ByteString@", hexString, " size=", " contents=\""), zzd() <= 50 ? xz2.h(zzm()) : xz2.h(zze(0, 47).zzm()).concat("..."), "\">");
    }

    public abstract int zzd();

    public abstract zzfp zze(int i, int i2);

    public final byte[] zzm() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zzgv.zza;
        }
        byte[] bArr = new byte[iZzd];
        d(iZzd, bArr);
        return bArr;
    }
}
