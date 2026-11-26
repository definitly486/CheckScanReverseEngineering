package yads;

import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.material.internal.ViewUtils;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
public final class xb implements zm2 {
    public static final byte[] v = {73, 68, 51};
    public final boolean a;
    public final String d;
    public String e;
    public k06 f;
    public k06 g;
    public boolean k;
    public boolean l;
    public int o;
    public boolean p;
    public int r;
    public k06 t;
    public long u;
    public final ns4 b = new ns4(new byte[7]);
    public final os4 c = new os4(Arrays.copyOf(v, 10));
    public int h = 0;
    public int i = 0;
    public int j = 256;
    public int m = -1;
    public int n = -1;
    public long q = C.TIME_UNSET;
    public long s = C.TIME_UNSET;

    public xb(String str, boolean z) {
        this.a = z;
        this.d = str;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:120:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:122:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:155:0x0298 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0298 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0298 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x02e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:0x0304 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x02fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x02f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x02dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x02d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:72:0x022e  */
    /* JADX WARN: Code duplicated, block: B:77:0x0240  */
    /* JADX WARN: Code duplicated, block: B:80:0x0256  */
    /* JADX WARN: Code duplicated, block: B:83:0x025e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0263  */
    /* JADX WARN: Code duplicated, block: B:88:0x0268  */
    /* JADX WARN: Code duplicated, block: B:93:0x027c  */
    @Override // yads.zm2
    public final void a(os4 os4Var) {
        int i;
        int i2;
        int i3;
        char c;
        byte[] bArr;
        int iA;
        byte[] bArr2;
        int i4;
        int i5;
        byte b;
        int i6;
        int i7;
        int i8;
        byte b2;
        this.f.getClass();
        int i9 = u56.a;
        while (true) {
            int i10 = os4Var.c;
            int i11 = os4Var.b;
            int i12 = i10 - i11;
            if (i12 <= 0) {
                return;
            }
            int i13 = this.h;
            int i14 = -1;
            int i15 = 4;
            int i16 = 3;
            if (i13 == 0) {
                byte[] bArr3 = os4Var.a;
                while (true) {
                    if (i11 < i10) {
                        int i17 = i11 + 1;
                        byte b3 = bArr3[i11];
                        int i18 = b3 & 255;
                        int i19 = i16;
                        if (this.j == 512 && (((((byte) i18) & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520) {
                            if (!this.l) {
                                int i20 = i11 - 1;
                                os4Var.e(i11);
                                byte[] bArr4 = this.b.a;
                                if (os4Var.c - os4Var.b < 1) {
                                    i14 = i14;
                                } else {
                                    os4Var.a(bArr4, 0, 1);
                                    this.b.b(i15);
                                    int iA2 = this.b.a(1);
                                    int i21 = this.m;
                                    if (i21 != i14 && iA2 != i21) {
                                        i14 = i14;
                                    } else if (this.n != i14) {
                                        byte[] bArr5 = this.b.a;
                                        if (os4Var.c - os4Var.b >= 1) {
                                            os4Var.a(bArr5, 0, 1);
                                            this.b.b(2);
                                            if (this.b.a(i15) != this.n) {
                                                i14 = -1;
                                            } else {
                                                os4Var.e(i17);
                                                bArr = this.b.a;
                                                if (os4Var.c - os4Var.b < i15) {
                                                    os4Var.a(bArr, 0, i15);
                                                    this.b.b(14);
                                                    iA = this.b.a(13);
                                                    if (iA < 7) {
                                                        i14 = -1;
                                                    } else {
                                                        bArr2 = os4Var.a;
                                                        i4 = os4Var.c;
                                                        i5 = i20 + iA;
                                                        if (i5 >= i4) {
                                                            b = bArr2[i5];
                                                            i14 = -1;
                                                            if (b == -1) {
                                                                i8 = i5 + 1;
                                                                if (i8 == i4) {
                                                                    b2 = bArr2[i8];
                                                                    if ((((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520 || ((b2 & 8) >> 3) != iA2) {
                                                                    }
                                                                }
                                                            } else if (b == 73 && ((i6 = i5 + 1) == i4 || (bArr2[i6] == 68 && ((i7 = i5 + 2) == i4 || bArr2[i7] == 51)))) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        bArr = this.b.a;
                                        if (os4Var.c - os4Var.b < i15) {
                                            os4Var.a(bArr, 0, i15);
                                            this.b.b(14);
                                            iA = this.b.a(13);
                                            if (iA < 7) {
                                                i14 = -1;
                                            } else {
                                                bArr2 = os4Var.a;
                                                i4 = os4Var.c;
                                                i5 = i20 + iA;
                                                if (i5 >= i4) {
                                                    b = bArr2[i5];
                                                    i14 = -1;
                                                    if (b == -1) {
                                                        i8 = i5 + 1;
                                                        if (i8 == i4) {
                                                            b2 = bArr2[i8];
                                                            if ((((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK) & 65526) == 65520) {
                                                            }
                                                        }
                                                    } else if (b == 73) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i = this.j;
                                i2 = i18 | i;
                                if (i2 != 329) {
                                    i3 = 3;
                                    c = 2;
                                    this.j = ViewUtils.EDGE_TO_EDGE_FLAGS;
                                } else if (i2 != 511) {
                                    i3 = 3;
                                    c = 2;
                                    this.j = 512;
                                } else if (i2 != 836) {
                                    i3 = 3;
                                    c = 2;
                                    this.j = 1024;
                                } else if (i2 != 1075) {
                                    this.h = 2;
                                    this.i = 3;
                                    this.r = 0;
                                    this.c.e(0);
                                    os4Var.e(i17);
                                } else if (i != 256) {
                                    this.j = 256;
                                    i15 = 4;
                                    i16 = 3;
                                } else {
                                    i3 = 3;
                                    c = 2;
                                }
                                i11 = i17;
                                i16 = i3;
                                i15 = 4;
                            }
                            this.o = (b3 & 8) >> 3;
                            this.k = (b3 & 1) == 0;
                            if (this.l) {
                                this.h = i19;
                                this.i = 0;
                            } else {
                                this.h = 1;
                                this.i = 0;
                            }
                            os4Var.e(i17);
                        } else {
                            i14 = i14;
                            i = this.j;
                            i2 = i18 | i;
                            if (i2 != 329) {
                                i3 = 3;
                                c = 2;
                                this.j = ViewUtils.EDGE_TO_EDGE_FLAGS;
                            } else if (i2 != 511) {
                                i3 = 3;
                                c = 2;
                                this.j = 512;
                            } else if (i2 != 836) {
                                i3 = 3;
                                c = 2;
                                this.j = 1024;
                            } else if (i2 != 1075) {
                                this.h = 2;
                                this.i = 3;
                                this.r = 0;
                                this.c.e(0);
                                os4Var.e(i17);
                            } else if (i != 256) {
                                this.j = 256;
                                i15 = 4;
                                i16 = 3;
                            } else {
                                i3 = 3;
                                c = 2;
                            }
                            i11 = i17;
                            i16 = i3;
                            i15 = 4;
                        }
                    } else {
                        os4Var.e(i11);
                    }
                }
            } else if (i13 != 1) {
                if (i13 == 2) {
                    byte[] bArr6 = this.c.a;
                    int iMin = Math.min(i12, 10 - this.i);
                    os4Var.a(bArr6, this.i, iMin);
                    int i22 = this.i + iMin;
                    this.i = i22;
                    if (i22 == 10) {
                        this.g.a(10, this.c);
                        this.c.e(6);
                        k06 k06Var = this.g;
                        int iJ = this.c.j() + 10;
                        this.h = 4;
                        this.i = 10;
                        this.t = k06Var;
                        this.u = 0L;
                        this.r = iJ;
                    }
                } else if (i13 == 3) {
                    int i23 = this.k ? 7 : 5;
                    byte[] bArr7 = this.b.a;
                    int iMin2 = Math.min(i12, i23 - this.i);
                    os4Var.a(bArr7, this.i, iMin2);
                    int i24 = this.i + iMin2;
                    this.i = i24;
                    if (i24 == i23) {
                        this.b.b(0);
                        boolean z = this.p;
                        ns4 ns4Var = this.b;
                        if (z) {
                            ns4Var.c(10);
                        } else {
                            int iA3 = ns4Var.a(2) + 1;
                            if (iA3 != 2) {
                                sv3.d("AdtsReader", "Detected audio object type: " + iA3 + ", but assuming AAC LC.");
                                iA3 = 2;
                            }
                            this.b.c(5);
                            int iA4 = this.b.a(3);
                            int i25 = this.n;
                            byte[] bArr8 = {(byte) (((iA3 << 3) & 248) | ((i25 >> 1) & 7)), (byte) (((iA4 << 3) & 120) | ((i25 << 7) & 128))};
                            a aVarA = b.a(new ns4(bArr8), false);
                            uz2 uz2Var = new uz2();
                            uz2Var.a = this.e;
                            uz2Var.k = "audio/mp4a-latm";
                            uz2Var.h = aVarA.c;
                            uz2Var.x = aVarA.b;
                            uz2Var.y = aVarA.a;
                            uz2Var.m = Collections.singletonList(bArr8);
                            uz2Var.c = this.d;
                            vz2 vz2Var = new vz2(uz2Var);
                            this.q = 1024000000 / ((long) vz2Var.A);
                            this.f.a(vz2Var);
                            this.p = true;
                        }
                        this.b.c(4);
                        int iA5 = this.b.a(13);
                        int i26 = iA5 - 7;
                        if (this.k) {
                            i26 = iA5 - 9;
                        }
                        k06 k06Var2 = this.f;
                        long j = this.q;
                        this.h = 4;
                        this.i = 0;
                        this.t = k06Var2;
                        this.u = j;
                        this.r = i26;
                    }
                } else {
                    if (i13 != 4) {
                        defpackage.ud.g();
                        return;
                    }
                    int iMin3 = Math.min(i12, this.r - this.i);
                    this.t.a(iMin3, os4Var);
                    int i27 = this.i + iMin3;
                    this.i = i27;
                    int i28 = this.r;
                    if (i27 == i28) {
                        long j2 = this.s;
                        if (j2 != C.TIME_UNSET) {
                            this.t.a(j2, 1, i28, 0, null);
                            this.s += this.u;
                        }
                        this.h = 0;
                        this.i = 0;
                        this.j = 256;
                    }
                }
            } else if (i12 != 0) {
                ns4 ns4Var2 = this.b;
                ns4Var2.a[0] = os4Var.a[i11];
                ns4Var2.b(2);
                int iA6 = this.b.a(4);
                int i29 = this.n;
                if (i29 == -1 || iA6 == i29) {
                    if (!this.l) {
                        this.l = true;
                        this.m = this.o;
                        this.n = iA6;
                    }
                    this.h = 3;
                    this.i = 0;
                } else {
                    this.l = false;
                    this.h = 0;
                    this.i = 0;
                    this.j = 256;
                }
            }
        }
    }

    @Override // yads.zm2
    public final void b() {
    }

    @Override // yads.zm2
    public final void a(zs2 zs2Var, t26 t26Var) {
        t26Var.a();
        t26Var.b();
        this.e = t26Var.e;
        t26Var.b();
        k06 k06VarA = zs2Var.a(t26Var.d, 1);
        this.f = k06VarA;
        this.t = k06VarA;
        if (this.a) {
            t26Var.a();
            t26Var.b();
            k06 k06VarA2 = zs2Var.a(t26Var.d, 5);
            this.g = k06VarA2;
            uz2 uz2Var = new uz2();
            t26Var.b();
            uz2Var.a = t26Var.e;
            uz2Var.k = MimeTypes.APPLICATION_ID3;
            k06VarA2.a(new vz2(uz2Var));
            return;
        }
        this.g = new cm2();
    }

    @Override // yads.zm2
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.s = j;
        }
    }

    @Override // yads.zm2
    public final void a() {
        this.s = C.TIME_UNSET;
        this.l = false;
        this.h = 0;
        this.i = 0;
        this.j = 256;
    }
}
