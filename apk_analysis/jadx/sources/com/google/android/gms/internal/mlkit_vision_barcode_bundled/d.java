package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.e5b;
import defpackage.u3b;
import defpackage.ud;
import defpackage.whb;
import defpackage.xgb;
import java.nio.charset.Charset;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends zzdf {
    public static final int[] h = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    public final int c;
    public final zzdf d;
    public final zzdf e;
    public final int f;
    public final int g;

    public d(zzdf zzdfVar, zzdf zzdfVar2) {
        this.d = zzdfVar;
        this.e = zzdfVar2;
        int iZzd = zzdfVar.zzd();
        this.f = iZzd;
        this.c = zzdfVar2.zzd() + iZzd;
        this.g = Math.max(zzdfVar.f(), zzdfVar2.f()) + 1;
    }

    public static int p(int i) {
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return h[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final byte a(int i) {
        int i2 = this.f;
        return i < i2 ? this.d.a(i) : this.e.a(i - i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final void d(int i, int i2, int i3, byte[] bArr) {
        int i4 = i + i3;
        zzdf zzdfVar = this.d;
        int i5 = this.f;
        if (i4 <= i5) {
            zzdfVar.d(i, i2, i3, bArr);
            return;
        }
        zzdf zzdfVar2 = this.e;
        if (i >= i5) {
            zzdfVar2.d(i - i5, i2, i3, bArr);
            return;
        }
        int i6 = i5 - i;
        zzdfVar.d(i, i2, i6, bArr);
        zzdfVar2.d(0, i2 + i6, i3 - i6, bArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdf) {
            zzdf zzdfVar = (zzdf) obj;
            int iZzd = zzdfVar.zzd();
            int i = this.c;
            if (i == iZzd) {
                if (i == 0) {
                    return true;
                }
                int i2 = this.b;
                int i3 = zzdfVar.b;
                if (i2 == 0 || i3 == 0 || i2 == i3) {
                    whb whbVar = new whb(this);
                    u3b next = whbVar.next();
                    whb whbVar2 = new whb(zzdfVar);
                    u3b next2 = whbVar2.next();
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        int iZzd2 = next.zzd() - i4;
                        int iZzd3 = next2.zzd() - i5;
                        int iMin = Math.min(iZzd2, iZzd3);
                        if (!(i4 == 0 ? next.p(next2, i5, iMin) : next2.p(next, i4, iMin))) {
                            break;
                        }
                        i6 += iMin;
                        if (i6 >= i) {
                            if (i6 == i) {
                                return true;
                            }
                            ud.g();
                            return false;
                        }
                        if (iMin == iZzd2) {
                            next = whbVar.next();
                            i4 = 0;
                        } else {
                            i4 += iMin;
                        }
                        if (iMin == iZzd3) {
                            next2 = whbVar2.next();
                            i5 = 0;
                        } else {
                            i5 += iMin;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int f() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final boolean g() {
        return this.c >= p(this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int i(int i, int i2, int i3) {
        int i4 = i2 + i3;
        zzdf zzdfVar = this.d;
        int i5 = this.f;
        if (i4 <= i5) {
            return zzdfVar.i(i, i2, i3);
        }
        zzdf zzdfVar2 = this.e;
        if (i2 >= i5) {
            return zzdfVar2.i(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return zzdfVar2.i(zzdfVar.i(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new xgb(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int j(int i, int i2, int i3) {
        int i4 = i2 + i3;
        zzdf zzdfVar = this.d;
        int i5 = this.f;
        if (i4 <= i5) {
            return zzdfVar.j(i, i2, i3);
        }
        zzdf zzdfVar2 = this.e;
        if (i2 >= i5) {
            return zzdfVar2.j(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return zzdfVar2.j(zzdfVar.j(i, i2, i6), 0, i3 - i6);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final String k(Charset charset) {
        return new String(zzw(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final void m(e5b e5bVar) {
        this.d.m(e5bVar);
        this.e.m(e5bVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final byte zza(int i) {
        zzdf.o(i, this.c);
        return a(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int zzd() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final zzdf zzk(int i, int i2) {
        int i3 = this.c;
        int iN = zzdf.n(i, i2, i3);
        if (iN == 0) {
            return zzdf.zzb;
        }
        if (iN == i3) {
            return this;
        }
        zzdf zzdfVar = this.d;
        int i4 = this.f;
        if (i2 <= i4) {
            return zzdfVar.zzk(i, i2);
        }
        zzdf zzdfVar2 = this.e;
        if (i < i4) {
            return new d(zzdfVar.zzk(i, zzdfVar.zzd()), zzdfVar2.zzk(0, i2 - i4));
        }
        return zzdfVar2.zzk(i - i4, i2 - i4);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final boolean zzn() {
        int iJ = this.d.j(0, 0, this.f);
        zzdf zzdfVar = this.e;
        return zzdfVar.j(iJ, 0, zzdfVar.zzd()) == 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    /* JADX INFO: renamed from: zzq */
    public final zzdb iterator() {
        return new xgb(this);
    }
}
