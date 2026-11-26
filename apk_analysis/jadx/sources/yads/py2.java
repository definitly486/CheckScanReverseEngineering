package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class py2 implements ws2 {
    public zs2 f;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public um o;
    public df6 p;
    public final os4 a = new os4(4);
    public final os4 b = new os4(9);
    public final os4 c = new os4(11);
    public final os4 d = new os4();
    public final hd5 e = new hd5();
    public int g = 1;

    /* JADX WARN: Code duplicated, block: B:130:0x0373  */
    /* JADX WARN: Code duplicated, block: B:136:0x0390  */
    /* JADX WARN: Code duplicated, block: B:137:0x0394  */
    /* JADX WARN: Code duplicated, block: B:178:0x039e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x016e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0170  */
    /* JADX WARN: Code duplicated, block: B:93:0x028f  */
    /* JADX WARN: Code duplicated, block: B:97:0x02a6 A[PHI: r14
      0x02a6: PHI (r14v4 long) = (r14v0 long), (r14v0 long), (r14v0 long), (r14v0 long), (r14v0 long), (r14v0 long), (r14v0 long), (r14v1 long) binds: [B:96:0x02a4, B:99:0x02b4, B:102:0x02bc, B:105:0x02c3, B:113:0x02f1, B:115:0x0303, B:117:0x0307, B:190:0x02a6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws av5 {
        long j;
        long j2;
        long j3;
        int i;
        long j4;
        boolean z;
        boolean z2;
        long j5;
        if (this.f == null) {
            defpackage.ud.g();
            return 0;
        }
        while (true) {
            int i2 = this.g;
            if (i2 == 1) {
                if (!((wk0) xs2Var).a(this.b.a, 0, 9, true)) {
                    return -1;
                }
                this.b.e(0);
                os4 os4Var = this.b;
                os4Var.e(os4Var.b + 4);
                int iK = this.b.k();
                boolean z3 = (iK & 4) != 0;
                boolean z4 = (iK & 1) != 0;
                if (z3 && this.o == null) {
                    this.o = new um(this.f.a(8, 1));
                }
                if (z4 && this.p == null) {
                    this.p = new df6(this.f.a(9, 2));
                }
                this.f.a();
                this.j = this.b.a() - 5;
                this.g = 2;
            } else if (i2 == 2) {
                ((wk0) xs2Var).a(this.j);
                this.j = 0;
                this.g = 3;
            } else if (i2 == 3) {
                if (!((wk0) xs2Var).a(this.c.a, 0, 11, true)) {
                    return -1;
                }
                this.c.e(0);
                this.k = this.c.k();
                this.l = this.c.m();
                this.m = this.c.m();
                this.m = (((long) (this.c.k() << 24)) | this.m) * 1000;
                os4 os4Var2 = this.c;
                os4Var2.e(os4Var2.b + 3);
                this.g = 4;
            } else {
                if (i2 != 4) {
                    defpackage.ud.g();
                    return 0;
                }
                boolean z5 = this.h;
                long j6 = C.TIME_UNSET;
                if (z5) {
                    j = 1000;
                    j2 = this.i + this.m;
                } else {
                    j = 1000;
                    if (this.e.b == C.TIME_UNSET) {
                        j3 = 0;
                    } else {
                        j2 = this.m;
                    }
                    i = this.k;
                    if (i != 8 && this.o != null) {
                        if (!this.n) {
                            this.f.a(new rh5(C.TIME_UNSET, 0L));
                            this.n = true;
                        }
                        um umVar = this.o;
                        os4 os4VarA = a((wk0) xs2Var);
                        if (umVar.b) {
                            os4VarA.e(os4VarA.b + 1);
                        } else {
                            int iK2 = os4VarA.k();
                            int i3 = (iK2 >> 4) & 15;
                            umVar.d = i3;
                            if (i3 == 2) {
                                int i4 = um.e[(iK2 >> 2) & 3];
                                uz2 uz2Var = new uz2();
                                uz2Var.k = MimeTypes.AUDIO_MPEG;
                                uz2Var.x = 1;
                                uz2Var.y = i4;
                                umVar.a.a(new vz2(uz2Var));
                                umVar.c = true;
                            } else if (i3 == 7 || i3 == 8) {
                                String str = i3 == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW;
                                uz2 uz2Var2 = new uz2();
                                uz2Var2.k = str;
                                uz2Var2.x = 1;
                                uz2Var2.y = 8000;
                                umVar.a.a(new vz2(uz2Var2));
                                umVar.c = true;
                            } else if (i3 != 10) {
                                throw new av5("Audio format not supported: " + umVar.d);
                            }
                            umVar.b = true;
                        }
                        if (umVar.d == 2) {
                            int i5 = os4VarA.c - os4VarA.b;
                            umVar.a.a(i5, os4VarA);
                            umVar.a.a(j3, 1, i5, 0, null);
                        } else {
                            int iK3 = os4VarA.k();
                            if (iK3 != 0 || umVar.c) {
                                if (umVar.d != 10 || iK3 == 1) {
                                    int i6 = os4VarA.c - os4VarA.b;
                                    umVar.a.a(i6, os4VarA);
                                    umVar.a.a(j3, 1, i6, 0, null);
                                }
                                j4 = -9223372036854775807L;
                            } else {
                                int i7 = os4VarA.c - os4VarA.b;
                                byte[] bArr = new byte[i7];
                                os4VarA.a(bArr, 0, i7);
                                a aVarA = b.a(new ns4(bArr), false);
                                uz2 uz2Var3 = new uz2();
                                uz2Var3.k = "audio/mp4a-latm";
                                uz2Var3.h = aVarA.c;
                                uz2Var3.x = aVarA.b;
                                uz2Var3.y = aVarA.a;
                                uz2Var3.m = Collections.singletonList(bArr);
                                umVar.a.a(new vz2(uz2Var3));
                                umVar.c = true;
                            }
                            z = false;
                            z2 = true;
                            j4 = -9223372036854775807L;
                        }
                        z = true;
                        z2 = true;
                        j4 = -9223372036854775807L;
                    } else if (i != 9 && this.p != null) {
                        if (!this.n) {
                            this.f.a(new rh5(C.TIME_UNSET, 0L));
                            this.n = true;
                        }
                        df6 df6Var = this.p;
                        os4 os4VarA2 = a((wk0) xs2Var);
                        df6Var.getClass();
                        int iK4 = os4VarA2.k();
                        int i8 = (iK4 >> 4) & 15;
                        int i9 = iK4 & 15;
                        if (i9 != 7) {
                            throw new av5(vx4.a(i9, "Video format not supported: "));
                        }
                        df6Var.g = i8;
                        if (i8 != 5) {
                            int iK5 = os4VarA2.k();
                            byte[] bArr2 = os4VarA2.a;
                            int i10 = os4VarA2.b;
                            int i11 = i10 + 1;
                            os4VarA2.b = i11;
                            int i12 = ((bArr2[i10] & 255) << 24) >> 8;
                            int i13 = i10 + 2;
                            os4VarA2.b = i13;
                            int i14 = ((bArr2[i11] & 255) << 8) | i12;
                            int i15 = i10 + 3;
                            os4VarA2.b = i15;
                            long j7 = (((long) (i14 | (bArr2[i13] & 255))) * j) + j3;
                            if (iK5 == 0 && !df6Var.e) {
                                byte[] bArr3 = new byte[os4VarA2.c - i15];
                                os4 os4Var3 = new os4(bArr3);
                                os4VarA2.a(bArr3, 0, os4VarA2.c - os4VarA2.b);
                                dn dnVarA = dn.a(os4Var3);
                                df6Var.d = dnVarA.b;
                                uz2 uz2Var4 = new uz2();
                                uz2Var4.k = "video/avc";
                                uz2Var4.h = dnVarA.f;
                                uz2Var4.p = dnVarA.c;
                                uz2Var4.q = dnVarA.d;
                                uz2Var4.t = dnVarA.e;
                                uz2Var4.m = dnVarA.a;
                                df6Var.a.a(new vz2(uz2Var4));
                                df6Var.e = true;
                            } else if (iK5 == 1 && df6Var.e) {
                                int i16 = df6Var.g == 1 ? 1 : 0;
                                if (df6Var.f || i16 != 0) {
                                    byte[] bArr4 = df6Var.c.a;
                                    bArr4[0] = 0;
                                    bArr4[1] = 0;
                                    bArr4[2] = 0;
                                    int i17 = 4 - df6Var.d;
                                    int i18 = 0;
                                    while (os4VarA2.c - os4VarA2.b > 0) {
                                        os4VarA2.a(df6Var.c.a, i17, df6Var.d);
                                        df6Var.c.e(0);
                                        int iN = df6Var.c.n();
                                        df6Var.b.e(0);
                                        df6Var.a.a(4, df6Var.b);
                                        df6Var.a.a(iN, os4VarA2);
                                        i18 = i18 + 4 + iN;
                                    }
                                    df6Var.a.a(j7, i16, i18, 0, null);
                                    df6Var.f = true;
                                    z = true;
                                    z2 = true;
                                }
                                j4 = -9223372036854775807L;
                            }
                        }
                        z = false;
                        z2 = true;
                        j4 = -9223372036854775807L;
                    } else if (i == 18 || this.n) {
                        j4 = -9223372036854775807L;
                        ((wk0) xs2Var).a(this.l);
                        z = false;
                        z2 = false;
                    } else {
                        hd5 hd5Var = this.e;
                        os4 os4VarA3 = a((wk0) xs2Var);
                        hd5Var.getClass();
                        if (os4VarA3.k() == 2 && "onMetaData".equals(hd5.b(os4VarA3)) && os4VarA3.c - os4VarA3.b != 0 && os4VarA3.k() == 8) {
                            HashMap mapA = hd5.a(os4VarA3);
                            Object obj = mapA.get(TypedValues.TransitionType.S_DURATION);
                            double d = 1000000.0d;
                            if (obj instanceof Double) {
                                double dDoubleValue = ((Double) obj).doubleValue();
                                if (dDoubleValue > 0.0d) {
                                    hd5Var.b = (long) (dDoubleValue * 1000000.0d);
                                }
                            }
                            Object obj2 = mapA.get("keyframes");
                            if (obj2 instanceof Map) {
                                Map map = (Map) obj2;
                                Object obj3 = map.get("filepositions");
                                Object obj4 = map.get("times");
                                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                                    List list = (List) obj3;
                                    List list2 = (List) obj4;
                                    int size = list2.size();
                                    hd5Var.c = new long[size];
                                    hd5Var.d = new long[size];
                                    int i19 = 0;
                                    while (true) {
                                        if (i19 < size) {
                                            Object obj5 = list.get(i19);
                                            Object obj6 = list2.get(i19);
                                            double d2 = d;
                                            if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                                                hd5Var.c[i19] = (long) (((Double) obj6).doubleValue() * d2);
                                                hd5Var.d[i19] = ((Double) obj5).longValue();
                                                i19++;
                                                d = d2;
                                                j6 = j6;
                                            } else {
                                                j4 = j6;
                                                hd5Var.c = new long[0];
                                                hd5Var.d = new long[0];
                                            }
                                        } else {
                                            j4 = j6;
                                        }
                                    }
                                } else {
                                    j4 = j6;
                                }
                            } else {
                                j4 = j6;
                            }
                        } else {
                            j4 = j6;
                        }
                        hd5 hd5Var2 = this.e;
                        long j8 = hd5Var2.b;
                        if (j8 != j4) {
                            this.f.a(new nf3(j8, hd5Var2.d, hd5Var2.c));
                            this.n = true;
                        }
                        z = false;
                        z2 = true;
                    }
                    if (!this.h && z) {
                        this.h = true;
                        if (this.e.b == j4) {
                            j5 = -this.m;
                        } else {
                            j5 = 0;
                        }
                        this.i = j5;
                    }
                    this.j = 4;
                    this.g = 2;
                    if (z2) {
                        return 0;
                    }
                }
                j3 = j2;
                i = this.k;
                if (i != 8) {
                    if (i != 9) {
                    }
                    if (i == 18) {
                        j4 = -9223372036854775807L;
                        ((wk0) xs2Var).a(this.l);
                        z = false;
                        z2 = false;
                    } else {
                        j4 = -9223372036854775807L;
                        ((wk0) xs2Var).a(this.l);
                        z = false;
                        z2 = false;
                    }
                } else {
                    if (i != 9) {
                    }
                    if (i == 18) {
                        j4 = -9223372036854775807L;
                        ((wk0) xs2Var).a(this.l);
                        z = false;
                        z2 = false;
                    } else {
                        j4 = -9223372036854775807L;
                        ((wk0) xs2Var).a(this.l);
                        z = false;
                        z2 = false;
                    }
                }
                if (!this.h) {
                    this.h = true;
                    if (this.e.b == j4) {
                        j5 = -this.m;
                    } else {
                        j5 = 0;
                    }
                    this.i = j5;
                }
                this.j = 4;
                this.g = 2;
                if (z2) {
                    return 0;
                }
            }
        }
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var = (wk0) xs2Var;
        wk0Var.b(this.a.a, 0, 3, false);
        this.a.e(0);
        if (this.a.m() != 4607062) {
            return false;
        }
        wk0Var.b(this.a.a, 0, 2, false);
        this.a.e(0);
        if ((this.a.p() & 250) != 0) {
            return false;
        }
        wk0Var.b(this.a.a, 0, 4, false);
        this.a.e(0);
        int iA = this.a.a();
        wk0Var.f = 0;
        wk0Var.a(iA, false);
        wk0Var.b(this.a.a, 0, 4, false);
        this.a.e(0);
        return this.a.a() == 0;
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.f = zs2Var;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    public static /* synthetic */ ws2[] a() {
        return new ws2[]{new py2()};
    }

    public final os4 a(wk0 wk0Var) {
        int i = this.l;
        os4 os4Var = this.d;
        byte[] bArr = os4Var.a;
        if (i > bArr.length) {
            os4Var.a = new byte[Math.max(bArr.length * 2, i)];
            os4Var.c = 0;
            os4Var.b = 0;
        } else {
            os4Var.e(0);
        }
        this.d.d(this.l);
        wk0Var.a(this.d.a, 0, this.l, false);
        return this.d;
    }
}
