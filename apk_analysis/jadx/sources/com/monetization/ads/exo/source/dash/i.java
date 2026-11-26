package com.monetization.ads.exo.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import defpackage.e7;
import defpackage.ud;
import defpackage.xp;
import defpackage.y29;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import yads.aj0;
import yads.au4;
import yads.bj5;
import yads.cs;
import yads.cu3;
import yads.dk0;
import yads.eb;
import yads.gk0;
import yads.h14;
import yads.hk0;
import yads.ho5;
import yads.hp2;
import yads.io5;
import yads.ip2;
import yads.it4;
import yads.j04;
import yads.jk0;
import yads.jo5;
import yads.jt4;
import yads.jz;
import yads.k04;
import yads.k14;
import yads.kc0;
import yads.lc5;
import yads.ll0;
import yads.nc0;
import yads.nq2;
import yads.ns;
import yads.o75;
import yads.ou3;
import yads.ow4;
import yads.p04;
import yads.p16;
import yads.pc0;
import yads.qc0;
import yads.r04;
import yads.ru3;
import yads.rw4;
import yads.su3;
import yads.sv3;
import yads.tl2;
import yads.u56;
import yads.ui5;
import yads.vc0;
import yads.vs;
import yads.wc0;
import yads.wv3;
import yads.xl2;
import yads.z04;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends cs {
    public ru3 A;
    public p16 B;
    public nc0 C;
    public Handler D;
    public j04 E;
    public Uri F;
    public final Uri G;
    public kc0 H;
    public boolean I;
    public long J;
    public long K;
    public long L;
    public int M;
    public long N;
    public int O;
    public final p04 h;
    public final boolean i;
    public final vc0 j;
    public final gk0 k;
    public final dk0 l;
    public final xl2 m;
    public final ll0 n;
    public final ns o;
    public final long p;
    public final k14 q;
    public final it4 r;
    public final e s;
    public final Object t;
    public final SparseArray u;
    public final Runnable v;
    public final Runnable w;
    public final c x;
    public final su3 y;
    public wc0 z;

    static {
        nq2.a("goog.exo.dash");
    }

    public i(p04 p04Var, vc0 vc0Var, it4 it4Var, gk0 gk0Var, dk0 dk0Var, xl2 xl2Var, ll0 ll0Var, long j) {
        this.h = p04Var;
        this.E = p04Var.d;
        k04 k04Var = p04Var.c;
        k04Var.getClass();
        this.F = k04Var.a;
        this.G = p04Var.c.a;
        this.H = null;
        this.j = vc0Var;
        this.r = it4Var;
        this.k = gk0Var;
        this.m = xl2Var;
        this.n = ll0Var;
        this.p = j;
        this.l = dk0Var;
        this.o = new ns();
        this.i = false;
        this.q = new k14(this.c.c, 0, null, 0L);
        this.t = new Object();
        this.u = new SparseArray();
        this.x = new c(this);
        this.N = C.TIME_UNSET;
        this.L = C.TIME_UNSET;
        this.s = new e(this);
        this.y = new f(this);
        this.v = new y29(this, 1);
        this.w = new e7(this, 4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:145:0x032c  */
    /* JADX WARN: Code duplicated, block: B:173:0x038d  */
    /* JADX WARN: Code duplicated, block: B:176:0x0394  */
    /* JADX WARN: Code duplicated, block: B:262:0x055c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v61 */
    public final void a(boolean z) {
        long j;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        boolean z4;
        long j4;
        long j5;
        qc0 qc0VarD;
        long jMin;
        float f;
        float f2;
        bj5 bj5Var;
        long j6;
        boolean z5;
        boolean z6;
        boolean z7 = false;
        int i = 0;
        while (i < this.u.size()) {
            int iKeyAt = this.u.keyAt(i);
            if (iKeyAt >= this.O) {
                pc0 pc0Var = (pc0) this.u.valueAt(i);
                kc0 kc0Var = this.H;
                int i2 = iKeyAt - this.O;
                pc0Var.w = kc0Var;
                pc0Var.x = i2;
                ow4 ow4Var = pc0Var.n;
                ow4Var.i = z7;
                ow4Var.g = kc0Var;
                Iterator it = ow4Var.f.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < ow4Var.g.h) {
                        it.remove();
                    }
                }
                jz[] jzVarArr = pc0Var.t;
                if (jzVarArr != null) {
                    int length = jzVarArr.length;
                    int i3 = z7 ? 1 : 0;
                    while (i3 < length) {
                        z6 = z7;
                        jk0 jk0Var = jzVarArr[i3].f;
                        try {
                            jk0Var.k = kc0Var;
                            jk0Var.l = i2;
                            long jA = u56.a(kc0Var.a(i2));
                            List list = ((au4) jk0Var.k.m.get(jk0Var.l)).c;
                            ArrayList arrayList = new ArrayList();
                            int[] iArr = jk0Var.c;
                            try {
                                int length2 = iArr.length;
                                ?? r2 = z6;
                                while (r2 < length2) {
                                    ?? r17 = r2;
                                    arrayList.addAll(((eb) list.get(iArr[r17 == true ? 1 : 0])).c);
                                    r2 = (r17 == true ? 1 : 0) + 1;
                                }
                                for (int i4 = 0; i4 < jk0Var.i.length; i4++) {
                                    o75 o75Var = (o75) arrayList.get(jk0Var.j.b(i4));
                                    hk0[] hk0VarArr = jk0Var.i;
                                    hk0VarArr[i4] = hk0VarArr[i4].a(jA, o75Var);
                                }
                            } catch (vs e) {
                                e = e;
                                jk0Var.m = e;
                            }
                        } catch (vs e2) {
                            e = e2;
                        }
                        i3++;
                        z6 = false;
                    }
                    z6 = z7;
                    z5 = true;
                    pc0Var.s.a((ui5) pc0Var);
                } else {
                    z5 = true;
                }
                pc0Var.y = ((au4) kc0Var.m.get(i2)).d;
                for (hp2 hp2Var : pc0Var.u) {
                    for (ip2 ip2Var : pc0Var.y) {
                        String str = ip2Var.c + "/" + ip2Var.d;
                        ip2 ip2Var2 = hp2Var.f;
                        if (str.equals(ip2Var2.c + "/" + ip2Var2.d)) {
                            hp2Var.a(ip2Var, (kc0Var.d && i2 == kc0Var.m.size() + (-1)) ? z5 : false);
                            break;
                        }
                    }
                }
            }
            i++;
            z7 = false;
        }
        int i5 = 1;
        au4 au4Var = (au4) this.H.m.get(0);
        int size = this.H.m.size() - 1;
        au4 au4Var2 = (au4) this.H.m.get(size);
        long jA2 = u56.a(this.H.a(size));
        long j7 = this.L;
        long j8 = C.TIME_UNSET;
        long jA3 = u56.a(j7 == C.TIME_UNSET ? System.currentTimeMillis() : j7 + SystemClock.elapsedRealtime());
        long jA4 = u56.a(this.H.a(0));
        long jA5 = u56.a(au4Var.b);
        int i6 = 0;
        while (true) {
            if (i6 >= au4Var.c.size()) {
                j = j8;
                z2 = false;
                break;
            }
            int i7 = ((eb) au4Var.c.get(i6)).b;
            j = j8;
            if (i7 == i5 || i7 == 2) {
                z2 = true;
                break;
            } else {
                i6++;
                j8 = j;
                i5 = 1;
            }
        }
        int i8 = 0;
        while (true) {
            if (i8 >= au4Var.c.size()) {
                j2 = 0;
                break;
            }
            eb ebVar = (eb) au4Var.c.get(i8);
            j2 = 0;
            List list2 = ebVar.c;
            if ((!z2 || ebVar.b != 3) && !list2.isEmpty()) {
                qc0 qc0VarD2 = ((o75) list2.get(0)).d();
                if (qc0VarD2 == null || qc0VarD2.e(jA4, jA3) == 0) {
                    jA5 = jA5;
                    break;
                }
                jA5 = Math.max(jA5, qc0VarD2.a(qc0VarD2.c(jA4, jA3)) + jA5);
            }
            i8++;
        }
        long jA6 = u56.a(au4Var2.b);
        int i9 = 0;
        while (true) {
            if (i9 >= au4Var2.c.size()) {
                z3 = false;
                break;
            }
            int i10 = ((eb) au4Var2.c.get(i9)).b;
            if (i10 == 1 || i10 == 2) {
                z3 = true;
                break;
            }
            i9++;
        }
        long jMin2 = Long.MAX_VALUE;
        int i11 = 0;
        while (true) {
            if (i11 >= au4Var2.c.size()) {
                j3 = jMin2;
                break;
            }
            eb ebVar2 = (eb) au4Var2.c.get(i11);
            boolean z8 = z3;
            List list3 = ebVar2.c;
            if (z8) {
                j6 = jA6;
                if (ebVar2.b == 3) {
                    continue;
                }
                i11++;
                z3 = z8;
                jA6 = j6;
            } else {
                j6 = jA6;
            }
            if (list3.isEmpty()) {
                continue;
            } else {
                qc0 qc0VarD3 = ((o75) list3.get(0)).d();
                if (qc0VarD3 == null) {
                    j3 = j6 + jA2;
                    break;
                }
                long jE = qc0VarD3.e(jA2, jA3);
                if (jE == j2) {
                    j3 = j6;
                    break;
                } else {
                    long jC = (qc0VarD3.c(jA2, jA3) + jE) - 1;
                    jMin2 = Math.min(jMin2, qc0VarD3.b(jC, jA2) + qc0VarD3.a(jC) + j6);
                }
            }
            i11++;
            z3 = z8;
            jA6 = j6;
        }
        if (!this.H.d) {
            z4 = false;
            break;
        }
        int i12 = 0;
        while (true) {
            if (i12 >= au4Var2.c.size()) {
                z4 = true;
                break;
            }
            qc0 qc0VarD4 = ((o75) ((eb) au4Var2.c.get(i12)).c.get(0)).d();
            if (qc0VarD4 == null || qc0VarD4.a()) {
                z4 = false;
                break;
            }
            i12++;
        }
        if (z4) {
            long j9 = this.H.f;
            if (j9 != j) {
                jA5 = Math.max(jA5, j3 - u56.a(j9));
            }
        }
        long j10 = j3 - jA5;
        kc0 kc0Var2 = this.H;
        if (kc0Var2.d) {
            long j11 = kc0Var2.a;
            if (j11 == j) {
                ud.g();
                return;
            }
            long jA7 = (jA3 - u56.a(j11)) - jA5;
            long jB = u56.b(jA7);
            long j12 = this.h.d.d;
            if (j12 != j) {
                jMin = Math.min(jB, j12);
            } else {
                bj5 bj5Var2 = this.H.j;
                if (bj5Var2 != null) {
                    long j13 = bj5Var2.c;
                    if (j13 != j) {
                        jMin = Math.min(jB, j13);
                    } else {
                        jMin = jB;
                    }
                } else {
                    jMin = jB;
                }
            }
            long jB2 = u56.b(jA7 - j10);
            if (jB2 < j2 && jMin > j2) {
                jB2 = j2;
            }
            long j14 = this.H.c;
            if (j14 != j) {
                jB2 = Math.min(jB2 + j14, jB);
            }
            long j15 = this.h.d.c;
            if (j15 != j) {
                jB2 = Math.max(jB2, Math.min(j15, jB));
            } else {
                bj5 bj5Var3 = this.H.j;
                if (bj5Var3 != null) {
                    long j16 = bj5Var3.b;
                    if (j16 != j) {
                        jB2 = Math.max(jB2, Math.min(j16, jB));
                    }
                }
            }
            if (jB2 > jMin) {
                jMin = jB2;
            }
            long jMax = this.E.b;
            if (jMax == j) {
                kc0 kc0Var3 = this.H;
                bj5 bj5Var4 = kc0Var3.j;
                if (bj5Var4 != null) {
                    long j17 = bj5Var4.a;
                    if (j17 != j) {
                        jMax = j17;
                    } else {
                        jMax = kc0Var3.g;
                        if (jMax == j) {
                            jMax = this.p;
                        }
                    }
                } else {
                    jMax = kc0Var3.g;
                    if (jMax == j) {
                        jMax = this.p;
                    }
                }
            }
            if (jMax < jB2) {
                jMax = jB2;
            }
            if (jMax > jMin) {
                jMax = Math.max(jB2, Math.min(u56.b(jA7 - Math.min(5000000L, j10 / 2)), jMin));
            }
            long j18 = jMax;
            j04 j04Var = this.h.d;
            float f3 = j04Var.e;
            if (f3 == -3.4028235E38f) {
                bj5 bj5Var5 = this.H.j;
                f3 = bj5Var5 != null ? bj5Var5.d : -3.4028235E38f;
            }
            float f4 = j04Var.f;
            if (f4 == -3.4028235E38f) {
                bj5 bj5Var6 = this.H.j;
                f4 = bj5Var6 != null ? bj5Var6.e : -3.4028235E38f;
            }
            if (f3 == -3.4028235E38f && f4 == -3.4028235E38f && ((bj5Var = this.H.j) == null || bj5Var.a == j)) {
                f2 = 1.0f;
                f = 1.0f;
            } else {
                f = f4;
                f2 = f3;
            }
            this.E = new j04(j18, jB2, jMin, f2, f);
            long jB3 = u56.b(jA5) + this.H.a;
            long jA8 = jA7 - u56.a(this.E.b);
            long jMin3 = Math.min(5000000L, j10 / 2);
            j5 = jA8 < jMin3 ? jMin3 : jA8;
            j4 = jB3;
        } else {
            j4 = j;
            j5 = j2;
        }
        long jA9 = jA5 - u56.a(au4Var.b);
        kc0 kc0Var4 = this.H;
        a(new b(kc0Var4.a, j4, this.L, this.O, jA9, j10, j5, kc0Var4, this.h, kc0Var4.d ? this.E : null));
        if (this.i) {
            return;
        }
        this.D.removeCallbacks(this.w);
        if (z4) {
            Handler handler = this.D;
            Runnable runnable = this.w;
            kc0 kc0Var5 = this.H;
            long j19 = this.L;
            long jCurrentTimeMillis = j19 == j ? System.currentTimeMillis() : j19 + SystemClock.elapsedRealtime();
            int size2 = kc0Var5.m.size() - 1;
            au4 au4Var3 = (au4) kc0Var5.m.get(size2);
            long jA10 = u56.a(au4Var3.b);
            long jA11 = u56.a(kc0Var5.a(size2));
            long jA12 = u56.a(jCurrentTimeMillis);
            long jA13 = u56.a(kc0Var5.a);
            long jA14 = u56.a(5000L);
            for (int i13 = 0; i13 < au4Var3.c.size(); i13++) {
                List list4 = ((eb) au4Var3.c.get(i13)).c;
                if (!list4.isEmpty() && (qc0VarD = ((o75) list4.get(0)).d()) != null) {
                    long jD = (qc0VarD.d(jA11, jA12) + (jA13 + jA10)) - jA12;
                    if (jD < jA14 - SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US || (jD > jA14 && jD < jA14 + SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US)) {
                        jA14 = jD;
                    }
                }
            }
            boolean z9 = false;
            RoundingMode roundingMode = RoundingMode.CEILING;
            roundingMode.getClass();
            long j20 = jA14 / 1000;
            long j21 = jA14 - (j20 * 1000);
            if (j21 != j2) {
                int i14 = ((int) ((jA14 ^ 1000) >> 63)) | 1;
                switch (wv3.a[roundingMode.ordinal()]) {
                    case 1:
                        if (j21 != j2) {
                            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                        }
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    case 2:
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    case 3:
                        if (i14 < 0) {
                            z9 = true;
                        }
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    case 4:
                        z9 = true;
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    case 5:
                        if (i14 > 0) {
                            z9 = true;
                        }
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    case 6:
                    case 7:
                    case 8:
                        long jAbs = Math.abs(j21);
                        long jAbs2 = jAbs - (Math.abs(1000L) - jAbs);
                        if (jAbs2 == j2) {
                            RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                            RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                        } else if (jAbs2 > j2) {
                            z9 = true;
                        }
                        if (z9) {
                            j20 += (long) i14;
                        }
                        break;
                    default:
                        xp.g();
                        return;
                }
            }
            handler.postDelayed(runnable, j20);
        }
        if (this.I) {
            h();
            return;
        }
        if (z) {
            kc0 kc0Var6 = this.H;
            if (kc0Var6.d) {
                long j22 = kc0Var6.e;
                if (j22 != j) {
                    this.D.postDelayed(this.v, Math.max(j2, (this.J + (j22 == j2 ? 5000L : j22)) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    @Override // yads.cs
    public final p04 c() {
        return this.h;
    }

    @Override // yads.cs
    public final void d() {
        this.y.a();
    }

    @Override // yads.cs
    public final void e() {
        this.I = false;
        this.z = null;
        ru3 ru3Var = this.A;
        if (ru3Var != null) {
            ru3Var.a((ou3) null);
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
        this.H = this.i ? this.H : null;
        this.F = this.G;
        this.C = null;
        Handler handler = this.D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.D = null;
        }
        this.L = C.TIME_UNSET;
        this.M = 0;
        this.N = C.TIME_UNSET;
        this.O = 0;
        this.u.clear();
        ns nsVar = this.o;
        nsVar.a.clear();
        nsVar.b.clear();
        nsVar.c.clear();
        this.m.release();
    }

    public final /* synthetic */ void f() {
        a(false);
    }

    public final void g() {
        boolean z;
        ru3 ru3Var = this.A;
        a aVar = new a(this);
        synchronized (jo5.b) {
            z = jo5.c;
        }
        if (z) {
            aVar.a();
            return;
        }
        if (ru3Var == null) {
            ru3Var = new ru3("SntpClient");
        }
        ru3Var.a(new io5(), new ho5(aVar), 1);
    }

    public final void h() {
        Uri uri;
        this.D.removeCallbacks(this.v);
        ru3 ru3Var = this.A;
        if (ru3Var.c != null) {
            return;
        }
        if (ru3Var.b()) {
            this.I = true;
            return;
        }
        synchronized (this.t) {
            uri = this.F;
        }
        this.I = false;
        jt4 jt4Var = new jt4(this.z, uri, 4, this.r);
        e eVar = this.s;
        this.n.getClass();
        this.A.a(jt4Var, eVar, 3);
        k14 k14Var = this.q;
        k14Var.c(new cu3(jt4Var.b), new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)));
    }

    @Override // yads.cs
    public final z04 a(h14 h14Var, aj0 aj0Var, long j) {
        int iIntValue = ((Integer) h14Var.a).intValue() - this.O;
        k14 k14Var = new k14(this.c.c, 0, h14Var, ((au4) this.H.m.get(iIntValue)).b);
        tl2 tl2Var = new tl2(this.d.c, 0, h14Var);
        int i = this.O + iIntValue;
        kc0 kc0Var = this.H;
        ns nsVar = this.o;
        gk0 gk0Var = this.k;
        p16 p16Var = this.B;
        xl2 xl2Var = this.m;
        ll0 ll0Var = this.n;
        long j2 = this.L;
        su3 su3Var = this.y;
        dk0 dk0Var = this.l;
        c cVar = this.x;
        rw4 rw4Var = this.g;
        if (rw4Var != null) {
            pc0 pc0Var = new pc0(i, kc0Var, nsVar, iIntValue, gk0Var, p16Var, xl2Var, tl2Var, ll0Var, k14Var, j2, su3Var, aj0Var, dk0Var, cVar, rw4Var);
            this.u.put(i, pc0Var);
            return pc0Var;
        }
        ud.g();
        return null;
    }

    @Override // yads.cs
    public final void a(z04 z04Var) {
        pc0 pc0Var = (pc0) z04Var;
        ow4 ow4Var = pc0Var.n;
        ow4Var.j = true;
        ow4Var.e.removeCallbacksAndMessages(null);
        for (jz jzVar : pc0Var.t) {
            jzVar.s = pc0Var;
            lc5 lc5Var = jzVar.n;
            lc5Var.a();
            lc5Var.d();
            for (lc5 lc5Var2 : jzVar.o) {
                lc5Var2.a();
                lc5Var2.d();
            }
            jzVar.j.a(jzVar);
        }
        pc0Var.s = null;
        this.u.remove(pc0Var.b);
    }

    public final void a(IOException iOException) {
        sv3.b("DashMediaSource", sv3.a("Failed to resolve time offset.", iOException));
        a(true);
    }

    @Override // yads.cs
    public final void a(p16 p16Var) {
        this.B = p16Var;
        this.m.prepare();
        xl2 xl2Var = this.m;
        Looper looperMyLooper = Looper.myLooper();
        rw4 rw4Var = this.g;
        if (rw4Var != null) {
            xl2Var.a(looperMyLooper, rw4Var);
            if (this.i) {
                a(false);
                return;
            }
            this.z = this.j.a();
            this.A = new ru3("DashMediaSource");
            this.D = u56.a((Handler.Callback) null);
            h();
            return;
        }
        ud.g();
    }
}
