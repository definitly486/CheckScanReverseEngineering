package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.ah;
import defpackage.d6b;
import defpackage.gnb;
import defpackage.i29;
import defpackage.ti0;
import defpackage.ud;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgt {
    public static final zzgt f = new zzgt(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public zzgt(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static zzgt a() {
        return new zzgt(0, new int[8], new Object[8], true);
    }

    public static zzgt zzc() {
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
        if (obj == null || !(obj instanceof zzgt)) {
            return false;
        }
        zzgt zzgtVar = (zzgt) obj;
        int i = this.a;
        if (i == zzgtVar.a) {
            int[] iArr = this.b;
            int[] iArr2 = zzgtVar.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = zzgtVar.c;
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

    public final int zza() {
        int iZzA;
        int iZzB;
        int iZzA2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iZzA3 = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2];
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2) {
                        int i6 = i4 << 3;
                        zzdf zzdfVar = (zzdf) this.c[i2];
                        int iZzA4 = zzdn.zzA(i6);
                        int iZzd = zzdfVar.zzd();
                        iZzA3 = zzdn.zzA(iZzd) + iZzd + iZzA4 + iZzA3;
                    } else if (i5 == 3) {
                        int iZzA5 = zzdn.zzA(i4 << 3);
                        iZzA = iZzA5 + iZzA5;
                        iZzB = ((zzgt) this.c[i2]).zza();
                    } else {
                        if (i5 != 5) {
                            i29.a(new zzeq("Protocol message tag had invalid wire type."));
                            return 0;
                        }
                        ((Integer) this.c[i2]).getClass();
                        iZzA2 = zzdn.zzA(i4 << 3) + 4;
                    }
                } else {
                    ((Long) this.c[i2]).getClass();
                    iZzA2 = zzdn.zzA(i4 << 3) + 8;
                }
                iZzA3 = iZzA2 + iZzA3;
            } else {
                int i7 = i4 << 3;
                long jLongValue = ((Long) this.c[i2]).longValue();
                iZzA = zzdn.zzA(i7);
                iZzB = zzdn.zzB(jLongValue);
            }
            iZzA3 = iZzB + iZzA + iZzA3;
        }
        this.d = iZzA3;
        return iZzA3;
    }

    public final int zzb() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iB = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2] >>> 3;
            zzdf zzdfVar = (zzdf) this.c[i2];
            int iZzA = zzdn.zzA(8);
            int iZzA2 = zzdn.zzA(i3) + zzdn.zzA(16);
            int iZzA3 = zzdn.zzA(24);
            int iZzd = zzdfVar.zzd();
            iB += iZzA + iZzA + iZzA2 + ah.b(iZzd, iZzd, iZzA3);
        }
        this.d = iB;
        return iB;
    }

    public final void zzh() {
        if (this.e) {
            this.e = false;
        }
    }

    public final void zzl(gnb gnbVar) {
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((d6b) gnbVar).a.zzu(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((d6b) gnbVar).a.zzh(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    ((d6b) gnbVar).a.zze(i4, (zzdf) obj);
                } else if (i3 == 3) {
                    ((d6b) gnbVar).a.zzr(i4, 3);
                    ((zzgt) obj).zzl(gnbVar);
                    ((d6b) gnbVar).a.zzr(i4, 4);
                } else {
                    if (i3 != 5) {
                        ti0.f(new zzeq("Protocol message tag had invalid wire type."));
                        return;
                    }
                    ((d6b) gnbVar).a.zzf(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public zzgt() {
        this(0, new int[8], new Object[8], true);
    }
}
