package com.google.android.gms.internal.measurement;

import defpackage.fqa;
import defpackage.h03;
import defpackage.jqa;
import defpackage.me0;
import defpackage.mqa;
import defpackage.mz0;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacr implements Iterable, Serializable {
    public static final zzacr zza = new mqa(zzaed.zza);
    public int b = 0;

    static {
        int i = fqa.a;
    }

    public static zzacr i(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return zza;
        }
        j(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new mqa(bArr2);
    }

    public static int j(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 44 + String.valueOf(i2).length());
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 15 + String.valueOf(i3).length());
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static /* synthetic */ boolean k(int i, int i2, int i3, byte[] bArr, byte[] bArr2) {
        int i4 = i + i3;
        j(i, i4, bArr.length);
        j(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static zzacr zzj(byte[] bArr, int i, int i2) {
        try {
            return i(bArr, i, i2);
        } catch (zzaeh e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public abstract byte a(int i);

    public abstract void b(int i, byte[] bArr);

    public abstract void d(zzada zzadaVar);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzacr)) {
            return false;
        }
        zzacr zzacrVar = (zzacr) obj;
        int iZzb = zzb();
        if (iZzb != zzacrVar.zzb()) {
            return false;
        }
        if (iZzb == 0) {
            return true;
        }
        int i = this.b;
        int i2 = zzacrVar.b;
        if (i == 0 || i2 == 0 || i == i2) {
            return f(zzacrVar);
        }
        return false;
    }

    public abstract boolean f(zzacr zzacrVar);

    public abstract int g(int i, int i2);

    public final int hashCode() {
        int iG = this.b;
        if (iG == 0) {
            int iZzb = zzb();
            iG = g(iZzb, iZzb);
            if (iG == 0) {
                iG = 1;
            }
            this.b = iG;
        }
        return iG;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new jqa(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return me0.d(mz0.a(zzb(), "<ByteString@", hexString, " size=", " contents=\""), zzb() <= 50 ? h03.c(zzm()) : h03.c(zzc(0, 47).zzm()).concat("..."), "\">");
    }

    public abstract int zzb();

    public abstract zzacr zzc(int i, int i2);

    public final byte[] zzm() {
        int iZzb = zzb();
        if (iZzb == 0) {
            return zzaed.zza;
        }
        byte[] bArr = new byte[iZzb];
        b(iZzb, bArr);
        return bArr;
    }
}
