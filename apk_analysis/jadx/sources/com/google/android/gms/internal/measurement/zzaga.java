package com.google.android.gms.internal.measurement;

import defpackage.bra;
import defpackage.dq;
import defpackage.fe0;
import defpackage.hta;
import defpackage.i29;
import defpackage.ti0;
import defpackage.ud;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaga {
    public static final zzaga f = new zzaga(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public zzaga(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static zzaga a() {
        return new zzaga(0, new int[8], new Object[8], true);
    }

    public static zzaga zza() {
        return f;
    }

    public final void b(int i, Object obj) {
        if (!this.e) {
            ud.d();
            return;
        }
        c(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void c(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzaga)) {
            return false;
        }
        zzaga zzagaVar = (zzaga) obj;
        int i = this.a;
        if (i == zzagaVar.a) {
            int[] iArr = this.b;
            int[] iArr2 = zzagaVar.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = zzagaVar.c;
            int i3 = this.a;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final void zzd() {
        if (this.e) {
            this.e = false;
        }
    }

    public final void zzg(hta htaVar) {
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((bra) htaVar).a.zzf(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((bra) htaVar).a.zzg(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    ((bra) htaVar).a.zzj(i4, (zzacr) obj);
                } else if (i3 == 3) {
                    ((bra) htaVar).a.zzb(i4, 3);
                    ((zzaga) obj).zzg(htaVar);
                    ((bra) htaVar).a.zzb(i4, 4);
                } else {
                    if (i3 != 5) {
                        ti0.f(new zzaeg("Protocol message tag had invalid wire type."));
                        return;
                    }
                    ((bra) htaVar).a.zze(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int zzh() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iB = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2] >>> 3;
            zzacr zzacrVar = (zzacr) this.c[i2];
            int iZzE = zzada.zzE(8);
            int iZzE2 = zzada.zzE(i3) + zzada.zzE(16);
            int iZzE3 = zzada.zzE(24);
            int iZzb = zzacrVar.zzb();
            iB += iZzE + iZzE + iZzE2 + dq.b(iZzb, iZzb, iZzE3);
        }
        this.d = iB;
        return iB;
    }

    public final int zzi() {
        int iZzE;
        int iZzF;
        int iZzE2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iB = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2) {
                        int i6 = i4 << 3;
                        zzacr zzacrVar = (zzacr) this.c[i2];
                        int iZzE3 = zzada.zzE(i6);
                        int iZzb = zzacrVar.zzb();
                        iB = fe0.b(iZzb, iZzb, iZzE3, iB);
                    } else if (i5 == 3) {
                        int iZzE4 = zzada.zzE(i4 << 3);
                        iZzE = iZzE4 + iZzE4;
                        iZzF = ((zzaga) this.c[i2]).zzi();
                    } else {
                        if (i5 != 5) {
                            i29.a(new zzaeg("Protocol message tag had invalid wire type."));
                            return 0;
                        }
                        ((Integer) this.c[i2]).getClass();
                        iZzE2 = zzada.zzE(i4 << 3) + 4;
                    }
                } else {
                    ((Long) this.c[i2]).getClass();
                    iZzE2 = zzada.zzE(i4 << 3) + 8;
                }
                iB = iZzE2 + iB;
            } else {
                int i7 = i4 << 3;
                long jLongValue = ((Long) this.c[i2]).longValue();
                iZzE = zzada.zzE(i7);
                iZzF = zzada.zzF(jLongValue);
            }
            iB = iZzF + iZzE + iB;
        }
        this.d = iB;
        return iB;
    }

    public zzaga() {
        this(0, new int[8], new Object[8], true);
    }
}
