package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.e5b;
import defpackage.ehb;
import defpackage.fg;
import defpackage.jh;
import defpackage.kv2;
import defpackage.l1;
import defpackage.me0;
import defpackage.mz0;
import defpackage.n2b;
import defpackage.rz0;
import defpackage.x1b;
import defpackage.yq;
import defpackage.z3b;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdf implements Iterable, Serializable {
    public static final zzdf zzb = new z3b(zzep.zzb);
    public int b = 0;

    static {
        int i = x1b.a;
    }

    public static zzdf b(Iterator it, int i) {
        if (i <= 0) {
            fg.c(kv2.b(i, "length (", ") must be >= 1"));
            return null;
        }
        if (i == 1) {
            return (zzdf) it.next();
        }
        int i2 = i >>> 1;
        zzdf zzdfVarB = b(it, i2);
        zzdf zzdfVarB2 = b(it, i - i2);
        if (Integer.MAX_VALUE - zzdfVarB.zzd() < zzdfVarB2.zzd()) {
            fg.c(rz0.c(zzdfVarB.zzd(), zzdfVarB2.zzd(), "ByteString would be too long: ", "+"));
            return null;
        }
        if (zzdfVarB2.zzd() == 0) {
            return zzdfVarB;
        }
        if (zzdfVarB.zzd() == 0) {
            return zzdfVarB2;
        }
        int iZzd = zzdfVarB2.zzd() + zzdfVarB.zzd();
        if (iZzd < 128) {
            int iZzd2 = zzdfVarB.zzd();
            int iZzd3 = zzdfVarB2.zzd();
            byte[] bArr = new byte[iZzd2 + iZzd3];
            zzdfVarB.zzv(bArr, 0, 0, iZzd2);
            zzdfVarB2.zzv(bArr, 0, iZzd2, iZzd3);
            return new z3b(bArr);
        }
        if (zzdfVarB instanceof d) {
            d dVar = (d) zzdfVarB;
            zzdf zzdfVar = dVar.d;
            zzdf zzdfVar2 = dVar.e;
            if (zzdfVarB2.zzd() + zzdfVar2.zzd() < 128) {
                int iZzd4 = zzdfVar2.zzd();
                int iZzd5 = zzdfVarB2.zzd();
                byte[] bArr2 = new byte[iZzd4 + iZzd5];
                zzdfVar2.zzv(bArr2, 0, 0, iZzd4);
                zzdfVarB2.zzv(bArr2, 0, iZzd4, iZzd5);
                return new d(zzdfVar, new z3b(bArr2));
            }
            if (zzdfVar.f() > zzdfVar2.f() && dVar.g > zzdfVarB2.f()) {
                return new d(zzdfVar, new d(zzdfVar2, zzdfVarB2));
            }
        }
        if (iZzd >= d.p(Math.max(zzdfVarB.f(), zzdfVarB2.f()) + 1)) {
            return new d(zzdfVarB, zzdfVarB2);
        }
        ehb ehbVar = new ehb();
        ehbVar.a(zzdfVarB);
        ehbVar.a(zzdfVarB2);
        ArrayDeque arrayDeque = ehbVar.a;
        zzdf dVar2 = (zzdf) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            dVar2 = new d((zzdf) arrayDeque.pop(), dVar2);
        }
        return dVar2;
    }

    public static int n(int i, int i2, int i3) {
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

    public static void o(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(rz0.c(i, i2, "Index > length: ", ", "));
            }
            throw new ArrayIndexOutOfBoundsException(jh.b(i, "Index < 0: "));
        }
    }

    public static zzdf zzr(byte[] bArr, int i, int i2) {
        n(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new z3b(bArr2);
    }

    public static zzdf zzs(InputStream inputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        int iMin = 256;
        while (true) {
            byte[] bArr = new byte[iMin];
            int i = 0;
            while (i < iMin) {
                int i2 = inputStream.read(bArr, i, iMin - i);
                if (i2 == -1) {
                    break;
                }
                i += i2;
            }
            zzdf zzdfVarZzr = i == 0 ? null : zzr(bArr, 0, i);
            if (zzdfVarZzr == null) {
                break;
            }
            arrayList.add(zzdfVarZzr);
            iMin = Math.min(iMin + iMin, 8192);
        }
        int size = arrayList.size();
        return size == 0 ? zzb : b(arrayList.iterator(), size);
    }

    public abstract byte a(int i);

    public abstract void d(int i, int i2, int i3, byte[] bArr);

    public abstract boolean equals(Object obj);

    public abstract int f();

    public abstract boolean g();

    public final int hashCode() {
        int i = this.b;
        if (i == 0) {
            int iZzd = zzd();
            i = i(iZzd, 0, iZzd);
            if (i == 0) {
                i = 1;
            }
            this.b = i;
        }
        return i;
    }

    public abstract int i(int i, int i2, int i3);

    public abstract int j(int i, int i2, int i3);

    public abstract String k(Charset charset);

    public abstract void m(e5b e5bVar);

    public final String toString() {
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        return me0.d(mz0.a(zzd(), "<ByteString@", hexString, " size=", " contents=\""), zzd() <= 50 ? l1.h(this) : l1.h(zzk(0, 47)).concat("..."), "\">");
    }

    public abstract byte zza(int i);

    public abstract int zzd();

    public abstract zzdf zzk(int i, int i2);

    public abstract boolean zzn();

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public zzdb iterator() {
        return new n2b(this);
    }

    public final String zzt() {
        return zzd() == 0 ? "" : k(zzep.a);
    }

    @Deprecated
    public final void zzv(byte[] bArr, int i, int i2, int i3) {
        n(0, i3, zzd());
        n(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            d(0, i2, i3, bArr);
        }
    }

    public final byte[] zzw() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zzep.zzb;
        }
        byte[] bArr = new byte[iZzd];
        d(0, 0, iZzd, bArr);
        return bArr;
    }
}
