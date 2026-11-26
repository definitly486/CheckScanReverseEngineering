package yads;

import androidx.media3.common.C;
import java.io.EOFException;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes6.dex */
public final class ua4 implements ws2 {
    public final cm2 e;
    public zs2 f;
    public k06 g;
    public k06 h;
    public int i;
    public h84 j;
    public long l;
    public long m;
    public int n;
    public wh5 o;
    public boolean p;
    public boolean q;
    public long r;
    public final os4 a = new os4(10);
    public final ab4 b = new ab4();
    public final f23 c = new f23();
    public long k = C.TIME_UNSET;
    public final ob3 d = new ob3();

    public ua4() {
        cm2 cm2Var = new cm2();
        this.e = cm2Var;
        this.h = cm2Var;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0259  */
    /* JADX WARN: Code duplicated, block: B:105:0x025f  */
    /* JADX WARN: Code duplicated, block: B:109:0x026d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0275  */
    /* JADX WARN: Code duplicated, block: B:118:0x02a4 A[LOOP:2: B:117:0x02a2->B:118:0x02a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    /* JADX WARN: Code duplicated, block: B:120:0x02c6 A[LOOP:0: B:104:0x025d->B:120:0x02c6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:121:0x02c9 A[EDGE_INSN: B:121:0x02c9->B:122:0x02cb BREAK  A[LOOP:0: B:104:0x025d->B:120:0x02c6]] */
    /* JADX WARN: Code duplicated, block: B:124:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:125:0x02d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:127:0x02da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:131:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:132:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:134:0x0348  */
    /* JADX WARN: Code duplicated, block: B:136:0x035a  */
    /* JADX WARN: Code duplicated, block: B:138:0x0364  */
    /* JADX WARN: Code duplicated, block: B:13:0x0043 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x036d  */
    /* JADX WARN: Code duplicated, block: B:144:0x037c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0045  */
    /* JADX WARN: Code duplicated, block: B:15:0x0047 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:161:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:168:0x0404 A[PHI: r16
      0x0404: PHI (r16v1 long) = (r16v0 long), (r16v4 long), (r16v4 long) binds: [B:8:0x0015, B:167:0x0402, B:142:0x0378] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:169:0x0406  */
    /* JADX WARN: Code duplicated, block: B:16:0x0049  */
    /* JADX WARN: Code duplicated, block: B:172:0x040e  */
    /* JADX WARN: Code duplicated, block: B:17:0x004c  */
    /* JADX WARN: Code duplicated, block: B:184:0x02c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0267 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0281 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x028f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:33:0x008c  */
    /* JADX WARN: Code duplicated, block: B:68:0x016e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0174  */
    /* JADX WARN: Code duplicated, block: B:85:0x01de  */
    /* JADX WARN: Code duplicated, block: B:87:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:92:0x0210 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:93:0x0212  */
    /* JADX WARN: Code duplicated, block: B:96:0x021f  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws Throwable {
        long j;
        int i;
        Throwable th;
        long j2;
        long j3;
        wk0 wk0Var;
        long j4;
        int iA;
        int i2;
        wk0 wk0Var2;
        int iA2;
        os4 os4Var;
        wk0 wk0Var3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j5;
        int iA3;
        wk0 wk0Var4;
        int iA4;
        int i8;
        wh5 x50Var;
        f23 f23Var;
        f23 f23Var2;
        int i9;
        int i10;
        int iN;
        h84 h84Var;
        long j6;
        f94 f94Var;
        wh5 x50Var2;
        int length;
        int i11;
        g84[] g84VarArr;
        g84 g84Var;
        e94 e94Var;
        int length2;
        int i12;
        long jA;
        int length3;
        long[] jArr;
        long[] jArr2;
        long j7;
        int i13;
        g84 g84Var2;
        gw5 gw5Var;
        int iK;
        if (this.g == null) {
            defpackage.ud.g();
            return 0;
        }
        int i14 = u56.a;
        if (this.i == 0) {
            try {
                a((wk0) xs2Var, false);
                if (this.o == null) {
                    os4Var = new os4(this.b.c);
                    wk0Var3 = (wk0) xs2Var;
                    wk0Var3.b(os4Var.a, 0, this.b.c, false);
                    ab4 ab4Var = this.b;
                    i3 = ab4Var.a & 1;
                    i4 = ab4Var.e;
                    j = 1000000;
                    if (i3 != 0) {
                        if (i4 != 1) {
                            i5 = 36;
                        } else {
                            i5 = 21;
                        }
                    } else if (i4 != 1) {
                        i5 = 21;
                    } else {
                        i5 = 13;
                    }
                    i6 = os4Var.c;
                    i7 = i5 + 4;
                    j2 = C.TIME_UNSET;
                    j5 = 0;
                    if (i6 >= i7) {
                        os4Var.e(i5);
                        iA3 = os4Var.a();
                        if (iA3 != 1483304551 && iA3 != 1231971951) {
                            if (os4Var.c >= 40) {
                                os4Var.e(36);
                                if (os4Var.a() == 1447187017) {
                                    iA3 = 1447187017;
                                } else {
                                    iA3 = 0;
                                }
                            } else {
                                iA3 = 0;
                            }
                        }
                    } else if (os4Var.c >= 40) {
                        os4Var.e(36);
                        if (os4Var.a() == 1447187017) {
                            iA3 = 1447187017;
                        } else {
                            iA3 = 0;
                        }
                    } else {
                        iA3 = 0;
                    }
                    th = null;
                    if (iA3 != 1483304551 || iA3 == 1231971951) {
                        wk0Var4 = wk0Var3;
                        long j8 = wk0Var4.c;
                        long j9 = wk0Var4.d;
                        ab4 ab4Var2 = this.b;
                        int i15 = ab4Var2.g;
                        int i16 = ab4Var2.d;
                        iA4 = os4Var.a();
                        if ((iA4 & 1) == 1 || (iN = os4Var.n()) == 0) {
                            i8 = iA3;
                            x50Var = null;
                        } else {
                            i8 = iA3;
                            long jA2 = u56.a(iN, ((long) i15) * 1000000, i16);
                            if ((iA4 & 6) != 6) {
                                x50Var = new wl6(j9, ab4Var2.c, jA2, -1L, null);
                            } else {
                                long jL = os4Var.l();
                                long[] jArr3 = new long[100];
                                for (int i17 = 0; i17 < 100; i17++) {
                                    jArr3[i17] = os4Var.k();
                                }
                                if (j8 != -1) {
                                    long j10 = j9 + jL;
                                    if (j8 != j10) {
                                        StringBuilder sbF = defpackage.xp.f(j8, "XING data size mismatch: ", ", ");
                                        sbF.append(j10);
                                        sv3.d("XingSeeker", sbF.toString());
                                    }
                                }
                                x50Var = new wl6(j9, ab4Var2.c, jA2, jL, jArr3);
                            }
                        }
                        if (x50Var != null) {
                            f23Var = this.c;
                            if (f23Var.a != -1 || f23Var.b == -1) {
                                wk0Var4.f = 0;
                                wk0Var4.a(i5 + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, false);
                                wk0Var4.b(this.a.a, 0, 3, false);
                                this.a.e(0);
                                f23Var2 = this.c;
                                int iM = this.a.m();
                                f23Var2.getClass();
                                i9 = iM >> 12;
                                i10 = iM & 4095;
                                if (i9 <= 0 || i10 > 0) {
                                    f23Var2.a = i9;
                                    f23Var2.b = i10;
                                }
                            }
                        }
                        wk0Var4.a(this.b.c);
                        if (x50Var != null && !x50Var.b() && i8 == 1231971951) {
                            wk0Var4.b(this.a.a, 0, 4, false);
                            this.a.e(0);
                            this.b.a(this.a.a());
                            x50Var = new x50(wk0Var4.c, wk0Var4.d, this.b, false);
                        }
                    } else if (iA3 == 1447187017) {
                        long j11 = wk0Var3.c;
                        long j12 = wk0Var3.d;
                        ab4 ab4Var3 = this.b;
                        os4Var.e(os4Var.b + 10);
                        int iA5 = os4Var.a();
                        if (iA5 <= 0) {
                            wk0Var4 = wk0Var3;
                        } else {
                            int i18 = ab4Var3.d;
                            long jA3 = u56.a(iA5, ((long) (i18 >= 32000 ? 1152 : 576)) * 1000000, i18);
                            int iP = os4Var.p();
                            int iP2 = os4Var.p();
                            int iP3 = os4Var.p();
                            os4Var.e(os4Var.b + 2);
                            wk0Var4 = wk0Var3;
                            long j13 = ((long) ab4Var3.c) + j12;
                            long[] jArr4 = new long[iP];
                            long[] jArr5 = new long[iP];
                            int i19 = 0;
                            while (true) {
                                if (i19 >= iP) {
                                    if (j11 != -1 && j11 != j12) {
                                        StringBuilder sbF2 = defpackage.xp.f(j11, "VBRI data size mismatch: ", ", ");
                                        sbF2.append(j12);
                                        sv3.d("VbriSeeker", sbF2.toString());
                                    }
                                    x50Var = new x86(jArr4, jArr5, jA3, j12);
                                    break;
                                }
                                os4 os4Var2 = os4Var;
                                jArr4[i19] = (((long) i19) * jA3) / ((long) iP);
                                jArr5[i19] = Math.max(j12, j13);
                                if (iP3 == 1) {
                                    iK = os4Var2.k();
                                } else if (iP3 == 2) {
                                    iK = os4Var2.p();
                                } else if (iP3 == 3) {
                                    iK = os4Var2.m();
                                } else if (iP3 == 4) {
                                    iK = os4Var2.n();
                                }
                                j12 += ((long) iP2) * ((long) iK);
                                i19++;
                                os4Var = os4Var2;
                            }
                            wk0Var4.a(this.b.c);
                        }
                        x50Var = null;
                        wk0Var4.a(this.b.c);
                    } else {
                        wk0Var4 = wk0Var3;
                        wk0Var4.f = 0;
                        x50Var = null;
                    }
                    h84Var = this.j;
                    j6 = wk0Var4.d;
                    if (h84Var != null) {
                        f94Var = null;
                        break;
                    }
                    length = h84Var.b.length;
                    i11 = 0;
                    while (true) {
                        if (i11 < length) {
                            f94Var = null;
                            break;
                        }
                        g84VarArr = h84Var.b;
                        g84Var = g84VarArr[i11];
                        if (g84Var instanceof e94) {
                            e94Var = (e94) g84Var;
                            length2 = g84VarArr.length;
                            i12 = 0;
                            while (true) {
                                if (i12 < length2) {
                                    jA = -9223372036854775807L;
                                    break;
                                }
                                g84Var2 = h84Var.b[i12];
                                if (g84Var2 instanceof gw5) {
                                    gw5Var = (gw5) g84Var2;
                                    if (gw5Var.b.equals("TLEN")) {
                                        jA = u56.a(Long.parseLong(gw5Var.d));
                                        break;
                                    }
                                }
                                i12++;
                            }
                            length3 = e94Var.f.length;
                            int i20 = length3 + 1;
                            jArr = new long[i20];
                            jArr2 = new long[i20];
                            jArr[0] = j6;
                            jArr2[0] = 0;
                            j7 = j6;
                            for (i13 = 1; i13 <= length3; i13++) {
                                int i21 = i13 - 1;
                                j7 += (long) (e94Var.d + e94Var.f[i21]);
                                j5 += (long) (e94Var.e + e94Var.g[i21]);
                                jArr[i13] = j7;
                                jArr2[i13] = j5;
                            }
                            f94Var = new f94(jA, jArr, jArr2);
                            break;
                        }
                        i11++;
                    }
                    if (this.p) {
                        x50Var2 = new vh5();
                    } else {
                        if (f94Var != null) {
                            x50Var = f94Var;
                        } else if (x50Var == null) {
                            x50Var = null;
                        }
                        if (x50Var != null) {
                            x50Var.b();
                            x50Var2 = x50Var;
                        } else {
                            wk0Var4.b(this.a.a, 0, 4, false);
                            this.a.e(0);
                            this.b.a(this.a.a());
                            x50Var2 = new x50(wk0Var4.c, wk0Var4.d, this.b, false);
                        }
                    }
                    this.o = x50Var2;
                    this.f.a(x50Var2);
                    k06 k06Var = this.h;
                    uz2 uz2Var = new uz2();
                    ab4 ab4Var4 = this.b;
                    uz2Var.k = ab4Var4.b;
                    uz2Var.l = 4096;
                    uz2Var.x = ab4Var4.e;
                    uz2Var.y = ab4Var4.d;
                    f23 f23Var3 = this.c;
                    uz2Var.A = f23Var3.a;
                    uz2Var.B = f23Var3.b;
                    uz2Var.i = this.j;
                    k06Var.a(new vz2(uz2Var));
                    this.m = wk0Var4.d;
                } else {
                    th = null;
                    j = 1000000;
                    j2 = C.TIME_UNSET;
                    j3 = this.m;
                    if (j3 != 0) {
                        wk0Var = (wk0) xs2Var;
                        j4 = wk0Var.d;
                        if (j4 < j3) {
                            wk0Var.a((int) (j3 - j4));
                        }
                    }
                }
                if (this.n == 0) {
                    wk0Var2 = (wk0) xs2Var;
                    wk0Var2.f = 0;
                    if (a(wk0Var2)) {
                        i = -1;
                    } else {
                        this.a.e(0);
                        iA2 = this.a.a();
                        if (((-128000) & iA2) == (((long) this.i) & (-128000)) || bb4.a(iA2) == -1) {
                            wk0Var2.a(1);
                            this.i = 0;
                        } else {
                            this.b.a(iA2);
                            long jA4 = this.k;
                            if (jA4 == j2) {
                                jA4 = this.o.a(wk0Var2.d);
                                this.k = jA4;
                            }
                            ab4 ab4Var5 = this.b;
                            this.n = ab4Var5.c;
                            wh5 wh5Var = this.o;
                            if (wh5Var instanceof of3) {
                                of3 of3Var = (of3) wh5Var;
                                long j14 = (((this.l + ((long) ab4Var5.g)) * j) / ((long) ab4Var5.d)) + jA4;
                                long j15 = wk0Var2.d;
                                if (!of3Var.c(j14)) {
                                    throw th;
                                }
                                if (this.q && of3Var.c(this.r)) {
                                    this.q = false;
                                    this.h = this.g;
                                }
                            }
                            iA = this.h.a(xs2Var, this.n, true);
                            if (iA == -1) {
                                i = -1;
                            } else {
                                i2 = this.n - iA;
                                this.n = i2;
                                if (i2 <= 0) {
                                    k06 k06Var2 = this.h;
                                    long j16 = this.l;
                                    long j17 = this.k;
                                    ab4 ab4Var6 = this.b;
                                    k06Var2.a(j17 + ((j16 * j) / ((long) ab4Var6.d)), 1, ab4Var6.c, 0, null);
                                    this.l += (long) this.b.g;
                                    this.n = 0;
                                }
                            }
                        }
                        i = 0;
                    }
                } else {
                    iA = this.h.a(xs2Var, this.n, true);
                    if (iA == -1) {
                        i = -1;
                    } else {
                        i2 = this.n - iA;
                        this.n = i2;
                        if (i2 <= 0) {
                            k06 k06Var3 = this.h;
                            long j18 = this.l;
                            long j19 = this.k;
                            ab4 ab4Var7 = this.b;
                            k06Var3.a(j19 + ((j18 * j) / ((long) ab4Var7.d)), 1, ab4Var7.c, 0, null);
                            this.l += (long) this.b.g;
                            this.n = 0;
                        }
                        i = 0;
                    }
                }
            } catch (EOFException unused) {
                j = 1000000;
            }
        } else {
            if (this.o == null) {
                os4Var = new os4(this.b.c);
                wk0Var3 = (wk0) xs2Var;
                wk0Var3.b(os4Var.a, 0, this.b.c, false);
                ab4 ab4Var8 = this.b;
                i3 = ab4Var8.a & 1;
                i4 = ab4Var8.e;
                j = 1000000;
                if (i3 != 0) {
                    if (i4 != 1) {
                        i5 = 36;
                    } else {
                        i5 = 21;
                    }
                } else if (i4 != 1) {
                    i5 = 21;
                } else {
                    i5 = 13;
                }
                i6 = os4Var.c;
                i7 = i5 + 4;
                j2 = C.TIME_UNSET;
                j5 = 0;
                if (i6 >= i7) {
                    os4Var.e(i5);
                    iA3 = os4Var.a();
                    if (iA3 != 1483304551) {
                        if (os4Var.c >= 40) {
                            os4Var.e(36);
                            if (os4Var.a() == 1447187017) {
                                iA3 = 1447187017;
                            } else {
                                iA3 = 0;
                            }
                        } else {
                            iA3 = 0;
                        }
                    }
                } else if (os4Var.c >= 40) {
                    os4Var.e(36);
                    if (os4Var.a() == 1447187017) {
                        iA3 = 1447187017;
                    } else {
                        iA3 = 0;
                    }
                } else {
                    iA3 = 0;
                }
                th = null;
                if (iA3 != 1483304551) {
                    wk0Var4 = wk0Var3;
                    long j20 = wk0Var4.c;
                    long j21 = wk0Var4.d;
                    ab4 ab4Var9 = this.b;
                    int i110 = ab4Var9.g;
                    int i111 = ab4Var9.d;
                    iA4 = os4Var.a();
                    if ((iA4 & 1) == 1) {
                        i8 = iA3;
                        x50Var = null;
                    } else {
                        i8 = iA3;
                        x50Var = null;
                    }
                    if (x50Var != null) {
                        f23Var = this.c;
                        if (f23Var.a != -1) {
                            wk0Var4.f = 0;
                            wk0Var4.a(i5 + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, false);
                            wk0Var4.b(this.a.a, 0, 3, false);
                            this.a.e(0);
                            f23Var2 = this.c;
                            int iM2 = this.a.m();
                            f23Var2.getClass();
                            i9 = iM2 >> 12;
                            i10 = iM2 & 4095;
                            if (i9 <= 0) {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            } else {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            }
                        } else {
                            wk0Var4.f = 0;
                            wk0Var4.a(i5 + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, false);
                            wk0Var4.b(this.a.a, 0, 3, false);
                            this.a.e(0);
                            f23Var2 = this.c;
                            int iM3 = this.a.m();
                            f23Var2.getClass();
                            i9 = iM3 >> 12;
                            i10 = iM3 & 4095;
                            if (i9 <= 0) {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            } else {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            }
                        }
                    }
                    wk0Var4.a(this.b.c);
                    if (x50Var != null) {
                        wk0Var4.b(this.a.a, 0, 4, false);
                        this.a.e(0);
                        this.b.a(this.a.a());
                        x50Var = new x50(wk0Var4.c, wk0Var4.d, this.b, false);
                    }
                } else {
                    wk0Var4 = wk0Var3;
                    long j22 = wk0Var4.c;
                    long j23 = wk0Var4.d;
                    ab4 ab4Var10 = this.b;
                    int i112 = ab4Var10.g;
                    int i113 = ab4Var10.d;
                    iA4 = os4Var.a();
                    if ((iA4 & 1) == 1) {
                        i8 = iA3;
                        x50Var = null;
                    } else {
                        i8 = iA3;
                        x50Var = null;
                    }
                    if (x50Var != null) {
                        f23Var = this.c;
                        if (f23Var.a != -1) {
                            wk0Var4.f = 0;
                            wk0Var4.a(i5 + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, false);
                            wk0Var4.b(this.a.a, 0, 3, false);
                            this.a.e(0);
                            f23Var2 = this.c;
                            int iM4 = this.a.m();
                            f23Var2.getClass();
                            i9 = iM4 >> 12;
                            i10 = iM4 & 4095;
                            if (i9 <= 0) {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            } else {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            }
                        } else {
                            wk0Var4.f = 0;
                            wk0Var4.a(i5 + ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, false);
                            wk0Var4.b(this.a.a, 0, 3, false);
                            this.a.e(0);
                            f23Var2 = this.c;
                            int iM5 = this.a.m();
                            f23Var2.getClass();
                            i9 = iM5 >> 12;
                            i10 = iM5 & 4095;
                            if (i9 <= 0) {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            } else {
                                f23Var2.a = i9;
                                f23Var2.b = i10;
                            }
                        }
                    }
                    wk0Var4.a(this.b.c);
                    if (x50Var != null) {
                        wk0Var4.b(this.a.a, 0, 4, false);
                        this.a.e(0);
                        this.b.a(this.a.a());
                        x50Var = new x50(wk0Var4.c, wk0Var4.d, this.b, false);
                    }
                }
                h84Var = this.j;
                j6 = wk0Var4.d;
                if (h84Var != null) {
                    f94Var = null;
                    break;
                }
                length = h84Var.b.length;
                i11 = 0;
                while (true) {
                    if (i11 < length) {
                        f94Var = null;
                        break;
                    }
                    g84VarArr = h84Var.b;
                    g84Var = g84VarArr[i11];
                    if (g84Var instanceof e94) {
                        e94Var = (e94) g84Var;
                        length2 = g84VarArr.length;
                        i12 = 0;
                        while (true) {
                            if (i12 < length2) {
                                jA = -9223372036854775807L;
                                break;
                            }
                            g84Var2 = h84Var.b[i12];
                            if (g84Var2 instanceof gw5) {
                                gw5Var = (gw5) g84Var2;
                                if (gw5Var.b.equals("TLEN")) {
                                    jA = u56.a(Long.parseLong(gw5Var.d));
                                    break;
                                }
                            }
                            i12++;
                        }
                        length3 = e94Var.f.length;
                        int i22 = length3 + 1;
                        jArr = new long[i22];
                        jArr2 = new long[i22];
                        jArr[0] = j6;
                        jArr2[0] = 0;
                        j7 = j6;
                        while (i13 <= length3) {
                            int i23 = i13 - 1;
                            j7 += (long) (e94Var.d + e94Var.f[i23]);
                            j5 += (long) (e94Var.e + e94Var.g[i23]);
                            jArr[i13] = j7;
                            jArr2[i13] = j5;
                        }
                        f94Var = new f94(jA, jArr, jArr2);
                        break;
                    }
                    i11++;
                }
                if (this.p) {
                    x50Var2 = new vh5();
                } else {
                    if (f94Var != null) {
                        x50Var = f94Var;
                    } else if (x50Var == null) {
                        x50Var = null;
                    }
                    if (x50Var != null) {
                        x50Var.b();
                        x50Var2 = x50Var;
                    } else {
                        wk0Var4.b(this.a.a, 0, 4, false);
                        this.a.e(0);
                        this.b.a(this.a.a());
                        x50Var2 = new x50(wk0Var4.c, wk0Var4.d, this.b, false);
                    }
                }
                this.o = x50Var2;
                this.f.a(x50Var2);
                k06 k06Var4 = this.h;
                uz2 uz2Var2 = new uz2();
                ab4 ab4Var11 = this.b;
                uz2Var2.k = ab4Var11.b;
                uz2Var2.l = 4096;
                uz2Var2.x = ab4Var11.e;
                uz2Var2.y = ab4Var11.d;
                f23 f23Var4 = this.c;
                uz2Var2.A = f23Var4.a;
                uz2Var2.B = f23Var4.b;
                uz2Var2.i = this.j;
                k06Var4.a(new vz2(uz2Var2));
                this.m = wk0Var4.d;
            } else {
                th = null;
                j = 1000000;
                j2 = C.TIME_UNSET;
                j3 = this.m;
                if (j3 != 0) {
                    wk0Var = (wk0) xs2Var;
                    j4 = wk0Var.d;
                    if (j4 < j3) {
                        wk0Var.a((int) (j3 - j4));
                    }
                }
            }
            if (this.n == 0) {
                wk0Var2 = (wk0) xs2Var;
                wk0Var2.f = 0;
                if (a(wk0Var2)) {
                    i = -1;
                } else {
                    this.a.e(0);
                    iA2 = this.a.a();
                    if (((-128000) & iA2) == (((long) this.i) & (-128000))) {
                    }
                    wk0Var2.a(1);
                    this.i = 0;
                    i = 0;
                }
            } else {
                iA = this.h.a(xs2Var, this.n, true);
                if (iA == -1) {
                    i = -1;
                } else {
                    i2 = this.n - iA;
                    this.n = i2;
                    if (i2 <= 0) {
                        k06 k06Var5 = this.h;
                        long j110 = this.l;
                        long j111 = this.k;
                        ab4 ab4Var12 = this.b;
                        k06Var5.a(j111 + ((j110 * j) / ((long) ab4Var12.d)), 1, ab4Var12.c, 0, null);
                        this.l += (long) this.b.g;
                        this.n = 0;
                    }
                    i = 0;
                }
            }
        }
        if (i == -1) {
            wh5 wh5Var2 = this.o;
            if (wh5Var2 instanceof of3) {
                if (wh5Var2.c() != ((this.l * j) / ((long) this.b.d)) + this.k) {
                    wh5 wh5Var3 = this.o;
                    ((of3) wh5Var3).getClass();
                    this.f.a(wh5Var3);
                }
            }
        }
        return i;
    }

    @Override // yads.ws2
    public final void release() {
    }

    public final boolean a(wk0 wk0Var, boolean z) throws xs4, EOFException {
        int i;
        int i2;
        int iA;
        int i3 = z ? 32768 : 131072;
        wk0Var.f = 0;
        if (wk0Var.d == 0) {
            h84 h84VarA = this.d.a(wk0Var, null);
            this.j = h84VarA;
            if (h84VarA != null) {
                this.c.a(h84VarA);
            }
            i = (int) (wk0Var.d + ((long) wk0Var.f));
            if (!z) {
                wk0Var.a(i);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i4 = i2;
        int i5 = i4;
        while (true) {
            if (a(wk0Var)) {
                if (i4 > 0) {
                    break;
                }
                defpackage.n7.e();
                return false;
            }
            this.a.e(0);
            int iA2 = this.a.a();
            if ((i2 == 0 || ((-128000) & iA2) == (((long) i2) & (-128000))) && (iA = bb4.a(iA2)) != -1) {
                i4++;
                if (i4 != 1) {
                    if (i4 == 4) {
                        break;
                    }
                } else {
                    this.b.a(iA2);
                    i2 = iA2;
                }
                wk0Var.a(iA - 4, false);
            } else {
                int i6 = i5 + 1;
                if (i5 == i3) {
                    if (z) {
                        return false;
                    }
                    defpackage.e2.h("Searched too many bytes.", null);
                    return false;
                }
                if (z) {
                    wk0Var.f = 0;
                    wk0Var.a(i + i6, false);
                } else {
                    wk0Var.a(1);
                }
                i4 = 0;
                i5 = i6;
                i2 = 0;
            }
        }
        if (z) {
            wk0Var.a(i + i5);
        } else {
            wk0Var.f = 0;
        }
        this.i = i2;
        return true;
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        return a((wk0) xs2Var, true);
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.f = zs2Var;
        k06 k06VarA = zs2Var.a(0, 1);
        this.g = k06VarA;
        this.h = k06VarA;
        this.f.a();
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.i = 0;
        this.k = C.TIME_UNSET;
        this.l = 0L;
        this.n = 0;
        this.r = j2;
        wh5 wh5Var = this.o;
        if (!(wh5Var instanceof of3) || ((of3) wh5Var).c(j2)) {
            return;
        }
        this.q = true;
        this.h = this.e;
    }

    public final boolean a(wk0 wk0Var) {
        wh5 wh5Var = this.o;
        if (wh5Var != null) {
            long jA = wh5Var.a();
            if (jA != -1 && wk0Var.d + ((long) wk0Var.f) > jA - 4) {
                return true;
            }
        }
        try {
            return !wk0Var.b(this.a.a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public static ws2[] a() {
        return new ws2[]{new ua4()};
    }
}
