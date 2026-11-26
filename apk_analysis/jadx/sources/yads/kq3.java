package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class kq3 implements ws2 {
    public zs2 b;
    public int c;
    public int d;
    public int e;
    public ta4 g;
    public wk0 h;
    public lq5 i;
    public wa4 j;
    public final os4 a = new os4(6);
    public long f = -1;

    /* JADX WARN: Code duplicated, block: B:100:0x0190  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        String strA;
        String strA2;
        ra4 ra4VarA;
        int i;
        ta4 ta4Var;
        long j;
        int i2 = this.c;
        if (i2 == 0) {
            this.a.c(2);
            ((wk0) xs2Var).a(this.a.a, 0, 2, false);
            int iP = this.a.p();
            this.d = iP;
            if (iP == 65498) {
                if (this.f != -1) {
                    this.c = 4;
                } else {
                    a();
                }
            } else if ((iP < 65488 || iP > 65497) && iP != 65281) {
                this.c = 1;
            }
            return 0;
        }
        if (i2 == 1) {
            this.a.c(2);
            ((wk0) xs2Var).a(this.a.a, 0, 2, false);
            this.e = this.a.p() - 2;
            this.c = 2;
            return 0;
        }
        if (i2 != 2) {
            if (i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        return -1;
                    }
                    defpackage.ud.g();
                    return 0;
                }
                if (this.i == null || xs2Var != this.h) {
                    wk0 wk0Var = (wk0) xs2Var;
                    this.h = wk0Var;
                    this.i = new lq5(wk0Var, this.f);
                }
                wa4 wa4Var = this.j;
                wa4Var.getClass();
                int iA = wa4Var.a(this.i, qx4Var);
                if (iA == 1) {
                    qx4Var.a += this.f;
                }
                return iA;
            }
            wk0 wk0Var2 = (wk0) xs2Var;
            long j2 = wk0Var2.d;
            long j3 = this.f;
            if (j2 != j3) {
                qx4Var.a = j3;
                return 1;
            }
            if (wk0Var2.b(this.a.a, 0, 1, true)) {
                wk0Var2.f = 0;
                if (this.j == null) {
                    this.j = new wa4();
                }
                lq5 lq5Var = new lq5(wk0Var2, this.f);
                this.i = lq5Var;
                this.j.getClass();
                if (fo5.a(lq5Var, false, false)) {
                    wa4 wa4Var2 = this.j;
                    long j4 = this.f;
                    zs2 zs2Var = this.b;
                    zs2Var.getClass();
                    wa4Var2.q = new nq5(j4, zs2Var);
                    ta4 ta4Var2 = this.g;
                    ta4Var2.getClass();
                    g84[] g84VarArr = {ta4Var2};
                    zs2 zs2Var2 = this.b;
                    zs2Var2.getClass();
                    k06 k06VarA = zs2Var2.a(1024, 4);
                    uz2 uz2Var = new uz2();
                    uz2Var.j = MimeTypes.IMAGE_JPEG;
                    uz2Var.i = new h84(g84VarArr);
                    k06VarA.a(new vz2(uz2Var));
                    this.c = 5;
                } else {
                    a();
                }
            } else {
                a();
            }
            return 0;
        }
        int i3 = this.d;
        int i4 = this.e;
        if (i3 == 65505) {
            byte[] bArr = new byte[i4];
            wk0 wk0Var3 = (wk0) xs2Var;
            wk0Var3.a(bArr, 0, i4, false);
            if (this.g == null) {
                int i5 = 0;
                if (i4 == 0) {
                    strA = null;
                } else {
                    while (i5 < i4 && bArr[i5] != 0) {
                        i5++;
                    }
                    strA = u56.a(bArr, 0, i5);
                    if (i5 < i4) {
                        i5++;
                    }
                }
                if ("http://ns.adobe.com/xap/1.0/".equals(strA)) {
                    if (i4 - i5 == 0) {
                        strA2 = null;
                    } else {
                        int i6 = i5;
                        while (i6 < i4 && bArr[i6] != 0) {
                            i6++;
                        }
                        strA2 = u56.a(bArr, i5, i6 - i5);
                    }
                    if (strA2 != null) {
                        long j5 = wk0Var3.c;
                        if (j5 == -1) {
                            ta4Var = null;
                        } else {
                            try {
                                ra4VarA = bm6.a(strA2);
                            } catch (NumberFormatException | XmlPullParserException | xs4 unused) {
                                sv3.d("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                                ra4VarA = null;
                            }
                            if (ra4VarA != null && (i = ra4VarA.b.e) >= 2) {
                                long j6 = -1;
                                long j7 = -1;
                                long j8 = -1;
                                long j9 = -1;
                                boolean zEquals = false;
                                for (int i7 = i - 1; i7 >= 0; i7--) {
                                    qa4 qa4Var = (qa4) ra4VarA.b.get(i7);
                                    zEquals |= MimeTypes.VIDEO_MP4.equals(qa4Var.a);
                                    if (i7 == 0) {
                                        j5 -= qa4Var.c;
                                        j = 0;
                                    } else {
                                        j = j5 - qa4Var.b;
                                    }
                                    long j10 = j5;
                                    j5 = j;
                                    if (zEquals && j5 != j10) {
                                        j9 = j10 - j5;
                                        zEquals = false;
                                        j8 = j5;
                                    }
                                    if (i7 == 0) {
                                        j7 = j10;
                                        j6 = j5;
                                    }
                                }
                                if (j8 == -1 || j9 == -1 || j6 == -1 || j7 == -1) {
                                    ta4Var = null;
                                } else {
                                    ta4Var = new ta4(j6, j7, ra4VarA.a, j8, j9);
                                }
                            } else {
                                ta4Var = null;
                            }
                        }
                        this.g = ta4Var;
                        if (ta4Var != null) {
                            this.f = ta4Var.e;
                        }
                    }
                }
            }
        } else {
            ((wk0) xs2Var).a(i4);
        }
        this.c = 0;
        return 0;
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.b = zs2Var;
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var = (wk0) xs2Var;
        this.a.c(2);
        wk0Var.b(this.a.a, 0, 2, false);
        if (this.a.p() != 65496) {
            return false;
        }
        this.a.c(2);
        wk0Var.b(this.a.a, 0, 2, false);
        int iP = this.a.p();
        this.d = iP;
        if (iP == 65504) {
            this.a.c(2);
            wk0Var.b(this.a.a, 0, 2, false);
            wk0Var.a(this.a.p() - 2, false);
            this.a.c(2);
            wk0Var.b(this.a.a, 0, 2, false);
            iP = this.a.p();
            this.d = iP;
        }
        if (iP != 65505) {
            return false;
        }
        wk0Var.a(2, false);
        this.a.c(6);
        wk0Var.b(this.a.a, 0, 6, false);
        return this.a.l() == 1165519206 && this.a.p() == 0;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            wa4 wa4Var = this.j;
            wa4Var.getClass();
            wa4Var.a(j, j2);
        }
    }

    public final void a() {
        zs2 zs2Var = this.b;
        zs2Var.getClass();
        k06 k06VarA = zs2Var.a(1024, 4);
        uz2 uz2Var = new uz2();
        uz2Var.j = MimeTypes.IMAGE_JPEG;
        uz2Var.i = new h84(new g84[0]);
        k06VarA.a(new vz2(uz2Var));
        zs2 zs2Var2 = this.b;
        zs2Var2.getClass();
        zs2Var2.a();
        this.b.a(new rh5(C.TIME_UNSET, 0L));
        this.c = 6;
    }
}
