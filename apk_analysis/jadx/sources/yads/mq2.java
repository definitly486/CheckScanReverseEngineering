package yads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.MediaPeriodQueue;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class mq2 implements Handler.Callback, y04, sw4 {
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean G;
    public boolean H;
    public boolean I;
    public int J;
    public lq2 K;
    public long L;
    public int M;
    public boolean N;
    public up2 O;
    public final gs[] b;
    public final Set c;
    public final gs[] d;
    public final p06 e;
    public final q06 f;
    public final kl0 g;
    public final vn h;
    public final gu5 i;
    public final HandlerThread j;
    public final Looper k;
    public final jx5 l;
    public final hx5 m;
    public final long n;
    public final ml0 o;
    public final ArrayList p;
    public final du5 q;
    public final jq2 r;
    public final d14 s;
    public final q14 t;
    public final jl0 u;
    public final long v;
    public th5 w;
    public bw4 x;
    public iq2 y;
    public boolean z;
    public int E = 0;
    public boolean F = false;
    public boolean A = false;
    public long P = C.TIME_UNSET;

    public mq2(gs[] gsVarArr, p06 p06Var, q06 q06Var, kl0 kl0Var, vn vnVar, ge geVar, th5 th5Var, jl0 jl0Var, long j, Looper looper, du5 du5Var, jq2 jq2Var, rw4 rw4Var) {
        this.r = jq2Var;
        this.b = gsVarArr;
        this.e = p06Var;
        this.f = q06Var;
        this.g = kl0Var;
        this.h = vnVar;
        this.w = th5Var;
        this.u = jl0Var;
        this.v = j;
        this.q = du5Var;
        this.n = kl0Var.h;
        gx5 gx5Var = kx5.b;
        h14 h14Var = bw4.s;
        bw4 bw4Var = new bw4(gx5Var, h14Var, C.TIME_UNSET, 0L, 1, null, false, g06.e, q06Var, k55.f, h14Var, false, 0, dw4.e, 0L, 0L, 0L, false);
        this.x = bw4Var;
        this.y = new iq2(bw4Var);
        this.d = new gs[gsVarArr.length];
        for (int i = 0; i < gsVarArr.length; i++) {
            gs gsVar = gsVarArr[i];
            gsVar.e = i;
            gsVar.f = rw4Var;
            this.d[i] = gsVar;
        }
        this.o = new ml0(this, du5Var);
        this.p = new ArrayList();
        this.c = tj5.a();
        this.l = new jx5();
        this.m = new hx5();
        p06Var.a = this;
        p06Var.b = vnVar;
        this.N = true;
        Handler handler = new Handler(looper);
        this.s = new d14(geVar, handler);
        this.t = new q14(this, geVar, handler, rw4Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.j = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.k = looper2;
        this.i = du5Var.a(looper2, this);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0052  */
    /* JADX WARN: Code duplicated, block: B:175:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:242:0x040c  */
    /* JADX WARN: Code duplicated, block: B:327:0x054d  */
    /* JADX WARN: Code duplicated, block: B:384:0x0605  */
    /* JADX WARN: Code duplicated, block: B:386:0x0613  */
    /* JADX WARN: Code duplicated, block: B:389:0x0626  */
    /* JADX WARN: Code duplicated, block: B:391:0x062e  */
    /* JADX WARN: Code duplicated, block: B:393:0x0632  */
    /* JADX WARN: Code duplicated, block: B:399:0x0646  */
    /* JADX WARN: Code duplicated, block: B:401:0x064a  */
    /* JADX WARN: Code duplicated, block: B:403:0x0656  */
    /* JADX WARN: Code duplicated, block: B:410:0x0667 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:411:0x0669  */
    /* JADX WARN: Code duplicated, block: B:413:0x0677  */
    /* JADX WARN: Code duplicated, block: B:415:0x067d  */
    /* JADX WARN: Code duplicated, block: B:417:0x0685  */
    /* JADX WARN: Code duplicated, block: B:419:0x0689  */
    /* JADX WARN: Code duplicated, block: B:425:0x069b  */
    /* JADX WARN: Code duplicated, block: B:427:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:434:0x06ba  */
    /* JADX WARN: Code duplicated, block: B:437:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:449:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:471:0x0748  */
    /* JADX WARN: Code duplicated, block: B:478:0x0754  */
    /* JADX WARN: Code duplicated, block: B:481:0x075b  */
    /* JADX WARN: Code duplicated, block: B:483:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:522:0x06dd A[EDGE_INSN: B:522:0x06dd->B:443:0x06dd BREAK  A[LOOP:4: B:435:0x06bb->B:442:0x06da], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:527:0x0639 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:528:0x063d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:533:0x068c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0187  */
    /* JADX WARN: Code duplicated, block: B:75:0x019a A[EDGE_INSN: B:75:0x019a->B:163:0x02d9 BREAK  A[LOOP:8: B:85:0x01b0->B:102:0x01e8]] */
    /* JADX WARN: Instruction removed from duplicated block: B:415:0x067d, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v19, types: [yads.q06] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24, types: [int] */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r1v48, types: [int] */
    /* JADX WARN: Type inference failed for: r1v50, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r1v73, types: [yads.q06] */
    /* JADX WARN: Type inference failed for: r1v80, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r1v87 */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [int] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27, types: [int] */
    /* JADX WARN: Type inference failed for: r2v74, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r2v78 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r4v79 */
    /* JADX WARN: Type inference failed for: r4v80, types: [int] */
    /* JADX WARN: Type inference failed for: r4v82 */
    /* JADX WARN: Type inference failed for: r5v35, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r5v36 */
    /* JADX WARN: Type inference failed for: r5v37, types: [int] */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v50, types: [int] */
    /* JADX WARN: Type inference failed for: r5v71, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r5v72 */
    /* JADX WARN: Type inference failed for: r5v73 */
    /* JADX WARN: Type inference failed for: r6v26, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r6v61, types: [yads.er2[]] */
    /* JADX WARN: Type inference failed for: r6v62, types: [yads.er2] */
    /* JADX WARN: Type inference failed for: r7v36, types: [yads.q06] */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v42, types: [int] */
    /* JADX WARN: Type inference failed for: r7v46 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a() throws up2 {
        boolean z;
        boolean z2;
        long j;
        long j2;
        long j3;
        boolean z3;
        boolean z4;
        boolean z5;
        bw4 bw4Var;
        a14 a14Var;
        jl0 jl0Var;
        long j4;
        long j5;
        int i;
        a14 a14Var2;
        int i2;
        eq5 eq5Var;
        int i3;
        boolean z6;
        bw4 bw4Var2;
        boolean z7;
        int i4;
        int i5;
        gs[] gsVarArr;
        bw4 bw4Var3;
        a14 a14Var3;
        mc5 mc5Var;
        long j6;
        boolean z8;
        boolean z9;
        long j7;
        c14 c14VarA;
        boolean z10;
        boolean z11;
        a14 a14Var4;
        a14 a14Var5;
        a14 a14Var6;
        boolean z12;
        boolean z13;
        boolean z14;
        this.q.getClass();
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.i.a.removeMessages(2);
        if (this.x.a.c() || !this.t.k) {
            jUptimeMillis = jUptimeMillis;
            z = false;
            z2 = true;
            j = 0;
            j2 = -9223372036854775807L;
        } else {
            d14 d14Var = this.s;
            long j8 = this.L;
            a14 a14Var7 = d14Var.j;
            if (a14Var7 == null) {
                z8 = true;
            } else if (a14Var7.l != null) {
                defpackage.ud.g();
                return;
            } else if (a14Var7.d) {
                z8 = true;
                a14Var7.a.reevaluateBuffer(j8 - a14Var7.o);
            } else {
                z8 = true;
            }
            d14 d14Var2 = this.s;
            a14 a14Var8 = d14Var2.j;
            if (a14Var8 == null || (!a14Var8.f.i && a14Var8.d && ((!a14Var8.e || a14Var8.a.getBufferedPositionUs() == Long.MIN_VALUE) && d14Var2.j.f.e != C.TIME_UNSET && d14Var2.k < 100))) {
                d14 d14Var3 = this.s;
                long j9 = this.L;
                bw4 bw4Var4 = this.x;
                a14 a14Var9 = d14Var3.j;
                if (a14Var9 == null) {
                    kx5 kx5Var = bw4Var4.a;
                    h14 h14Var = bw4Var4.b;
                    j7 = -9223372036854775807L;
                    boolean z15 = z8;
                    long j10 = bw4Var4.c;
                    long j11 = bw4Var4.r;
                    z9 = z15;
                    j = 0;
                    kx5Var.a(h14Var.a, d14Var3.a);
                    boolean zA = h14Var.a();
                    Object obj = h14Var.a;
                    c14VarA = zA ? d14Var3.a(kx5Var, obj, h14Var.b, h14Var.c, j10, h14Var.d) : d14Var3.a(kx5Var, obj, j11, j10, h14Var.d);
                } else {
                    z9 = z8;
                    j7 = -9223372036854775807L;
                    j = 0;
                    c14VarA = d14Var3.a(bw4Var4.a, a14Var9, j9);
                }
                if (c14VarA != null) {
                    d14 d14Var4 = this.s;
                    gs[] gsVarArr2 = this.d;
                    p06 p06Var = this.e;
                    aj0 aj0Var = this.g.a;
                    q14 q14Var = this.t;
                    q06 q06Var = this.f;
                    a14 a14Var10 = d14Var4.j;
                    a14 a14Var11 = new a14(gsVarArr2, a14Var10 == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : (a14Var10.o + a14Var10.f.e) - c14VarA.b, p06Var, aj0Var, q14Var, c14VarA, q06Var);
                    a14 a14Var12 = d14Var4.j;
                    if (a14Var12 == null) {
                        d14Var4.h = a14Var11;
                        d14Var4.i = a14Var11;
                    } else if (a14Var11 != a14Var12.l) {
                        a14Var12.a();
                        a14Var12.l = a14Var11;
                    }
                    d14Var4.l = null;
                    d14Var4.j = a14Var11;
                    d14Var4.k++;
                    d14Var4.c();
                    a14Var11.a.a(this, c14VarA.b);
                    if (this.s.h == a14Var11) {
                        b(c14VarA.b);
                    }
                    z10 = false;
                    a(false);
                } else {
                    z10 = false;
                }
            } else {
                z9 = z8;
                j7 = -9223372036854775807L;
                jUptimeMillis = jUptimeMillis;
                z10 = false;
                j = 0;
            }
            if (this.D) {
                a14 a14Var13 = this.s.j;
                if (a14Var13 == null) {
                    z14 = z10;
                } else if ((!a14Var13.d ? j : a14Var13.a.getNextLoadPositionUs()) == Long.MIN_VALUE) {
                    z14 = z10;
                } else {
                    z14 = z9;
                }
                this.D = z14;
                n();
            } else {
                d();
            }
            a14 a14Var14 = this.s.i;
            if (a14Var14 == null) {
                z11 = z9;
                break;
            }
            if (a14Var14.l != null && !this.B) {
                if (!a14Var14.d) {
                    z11 = z9;
                    break;
                }
                ?? r2 = z10;
                while (true) {
                    gs[] gsVarArr3 = this.b;
                    if (r2 >= gsVarArr3.length) {
                        a14 a14Var15 = a14Var14.l;
                        if (a14Var15.d || this.L >= a14Var15.f.b + a14Var15.o) {
                            ?? r7 = a14Var14.n;
                            d14 d14Var5 = this.s;
                            a14 a14Var16 = d14Var5.i;
                            if (a14Var16 != null && (a14Var4 = a14Var16.l) != null) {
                                d14Var5.i = a14Var4;
                                d14Var5.c();
                                a14 a14Var17 = d14Var5.i;
                                ?? r10 = a14Var17.n;
                                kx5 kx5Var2 = this.x.a;
                                z11 = z9;
                                a(kx5Var2, a14Var17.f.a, kx5Var2, a14Var14.f.a, C.TIME_UNSET);
                                if (a14Var17.d && a14Var17.a.readDiscontinuity() != j7) {
                                    long j12 = a14Var17.f.b + a14Var17.o;
                                    gs[] gsVarArr4 = this.b;
                                    int length = gsVarArr4.length;
                                    for (?? r5 = z10; r5 < length; r5++) {
                                        gs gsVar = gsVarArr4[r5];
                                        if (gsVar.h != null) {
                                            a(gsVar, j12);
                                        }
                                    }
                                    break;
                                }
                                for (?? r1 = z10; r1 < this.b.length; r1++) {
                                    boolean zA2 = r7.a(r1);
                                    boolean zA3 = r10.a(r1);
                                    if (zA2 && !this.b[r1].l) {
                                        boolean z16 = this.d[r1].b == -2 ? z11 : z10;
                                        n65 n65Var = r7.b[r1];
                                        n65 n65Var2 = r10.b[r1];
                                        if (!zA3 || !n65Var2.equals(n65Var) || z16) {
                                            a(this.b[r1], a14Var17.f.b + a14Var17.o);
                                        }
                                    }
                                }
                                break;
                            }
                            defpackage.ud.g();
                            return;
                        }
                    } else {
                        gs gsVar2 = gsVarArr3[r2];
                        mc5 mc5Var2 = a14Var14.c[r2];
                        if (gsVar2.h == mc5Var2) {
                            if (mc5Var2 != null && !gsVar2.d()) {
                                a14 a14Var18 = a14Var14.l;
                                if (!a14Var14.f.f || !a14Var18.d || (!(gsVar2 instanceof hw5) && !(gsVar2 instanceof k84) && gsVar2.k < a14Var18.f.b + a14Var18.o)) {
                                }
                            }
                            r2++;
                        }
                    }
                    z11 = z9;
                    break;
                }
            } else {
                z11 = z9;
                if (a14Var14.f.i || this.B) {
                    ?? r3 = z10;
                    while (true) {
                        gs[] gsVarArr5 = this.b;
                        if (r3 >= gsVarArr5.length) {
                            break;
                        }
                        gs gsVar3 = gsVarArr5[r3];
                        mc5 mc5Var3 = a14Var14.c[r3];
                        if (mc5Var3 != null && gsVar3.h == mc5Var3 && gsVar3.d()) {
                            long j13 = a14Var14.f.e;
                            a(gsVar3, (j13 == j7 || j13 == Long.MIN_VALUE) ? j7 : a14Var14.o + j13);
                        }
                        r3++;
                    }
                }
            }
            d14 d14Var6 = this.s;
            a14 a14Var19 = d14Var6.i;
            if (a14Var19 == null || d14Var6.h == a14Var19 || a14Var19.g) {
                z2 = z11;
            } else {
                ?? r4 = a14Var19.n;
                boolean z17 = z10;
                ?? r6 = z17;
                while (true) {
                    gs[] gsVarArr6 = this.b;
                    if (r6 >= gsVarArr6.length) {
                        z2 = z11;
                        if (!z17) {
                            a(new boolean[gsVarArr6.length]);
                            break;
                        }
                        break;
                    }
                    gs gsVar4 = gsVarArr6[r6];
                    if (b(gsVar4)) {
                        boolean z18 = gsVar4.h != a14Var19.c[r6] ? z11 : z10;
                        if (r4.a(r6) && !z18) {
                            z13 = z11;
                        } else if (gsVar4.l) {
                            z13 = z11;
                            if (gsVar4.e()) {
                                a(gsVar4);
                            } else {
                                z17 = z13;
                            }
                        } else {
                            ?? r8 = r4.c[r6];
                            int length2 = r8 != 0 ? r8.length() : z10;
                            vz2[] vz2VarArr = new vz2[length2];
                            for (?? r11 = z10; r11 < length2; r11++) {
                                vz2VarArr[r11] = r8.a(r11);
                            }
                            mc5 mc5Var4 = a14Var19.c[r6];
                            long j14 = a14Var19.f.b;
                            long j15 = a14Var19.o;
                            z13 = z11;
                            long j16 = j14 + j15;
                            if (gsVar4.l) {
                                defpackage.ud.g();
                                return;
                            }
                            gsVar4.h = mc5Var4;
                            if (gsVar4.k == Long.MIN_VALUE) {
                                gsVar4.k = j16;
                            }
                            gsVar4.i = vz2VarArr;
                            gsVar4.j = j15;
                            gsVar4.a(vz2VarArr, j16, j15);
                        }
                    } else {
                        z13 = z11;
                    }
                    z11 = z13;
                    r6++;
                }
            }
            boolean z19 = z10;
            while (l() && !this.B && (a14Var5 = this.s.h) != null && (a14Var6 = a14Var5.l) != null && this.L >= a14Var6.f.b + a14Var6.o && a14Var6.g) {
                if (z19) {
                    iq2 iq2Var = this.y;
                    bw4 bw4Var5 = this.x;
                    boolean z20 = iq2Var.a | (iq2Var.b != bw4Var5 ? z2 : z10);
                    iq2Var.a = z20;
                    iq2Var.b = bw4Var5;
                    if (z20) {
                        ((defpackage.x52) this.r).a(iq2Var);
                        this.y = new iq2(this.x);
                    }
                }
                a14 a14VarA = this.s.a();
                a14VarA.getClass();
                if (this.x.b.a.equals(a14VarA.f.a.a)) {
                    h14 h14Var2 = this.x.b;
                    if (h14Var2.b == -1) {
                        h14 h14Var3 = a14VarA.f.a;
                        if (h14Var3.b != -1 || h14Var2.e == h14Var3.e) {
                            z12 = z10;
                        } else {
                            z12 = z2;
                        }
                    } else {
                        z12 = z10;
                    }
                } else {
                    z12 = z10;
                }
                c14 c14Var = a14VarA.f;
                h14 h14Var4 = c14Var.a;
                boolean z21 = z12;
                long j17 = c14Var.b;
                this.x = a(h14Var4, j17, c14Var.c, j17, !z21, 0);
                k();
                o();
                z10 = z10;
                z19 = z2;
            }
            z = z10;
            j2 = j7;
        }
        int i6 = this.x.e;
        if (i6 == z2 || i6 == 4) {
            return;
        }
        a14 a14Var20 = this.s.h;
        if (a14Var20 == null) {
            this.i.a.sendEmptyMessageAtTime(2, jUptimeMillis + 10);
            return;
        }
        b06.a("doSomeWork");
        o();
        if (a14Var20.d) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
            a14Var20.a.a(this.x.r - this.n);
            ?? r9 = z;
            z3 = true;
            z4 = true;
            while (true) {
                gs[] gsVarArr7 = this.b;
                if (r9 >= gsVarArr7.length) {
                    break;
                }
                gs gsVar5 = gsVarArr7[r9];
                if (b(gsVar5)) {
                    j6 = j2;
                    gsVar5.a(this.L, jElapsedRealtime);
                    z3 = (z3 && gsVar5.e()) ? true : z;
                    boolean z22 = a14Var20.c[r9] != gsVar5.h ? true : z;
                    boolean z23 = (z22 || ((z22 || !gsVar5.d()) ? z : true) || gsVar5.f() || gsVar5.e()) ? true : z;
                    z4 = (z4 && z23) ? true : z;
                    if (!z23) {
                        mc5 mc5Var5 = gsVar5.h;
                        mc5Var5.getClass();
                        mc5Var5.a();
                    }
                } else {
                    j6 = j2;
                }
                j2 = j6;
                r9++;
            }
            j3 = j2;
        } else {
            j3 = j2;
            a14Var20.a.maybeThrowPrepareError();
            z3 = true;
            z4 = true;
        }
        long j18 = a14Var20.f.e;
        boolean z24 = (z3 && a14Var20.d && (j18 == j3 || j18 <= this.x.r)) ? true : z;
        if (z24 && this.B) {
            this.B = z;
            a(this.x.m, 5, z, z);
        }
        if (!z24 || !a14Var20.f.i) {
            bw4 bw4Var6 = this.x;
            if (bw4Var6.e != 2) {
                z5 = true;
                bw4Var = this.x;
                if (bw4Var.e == 3) {
                    if (this.J == 0) {
                        a14Var2 = this.s.h;
                        long j19 = a14Var2.f.e;
                        if (a14Var2.d || (j19 != j3 && bw4Var.r >= j19 && l())) {
                            this.C = l();
                            b(2);
                            if (this.C) {
                                for (a14Var = this.s.h; a14Var != null; a14Var = a14Var.l) {
                                    for (er2 er2Var : a14Var.n.c) {
                                        if (er2Var != null) {
                                            er2Var.i();
                                        }
                                    }
                                }
                                jl0Var = this.u;
                                j4 = jl0Var.h;
                                if (j4 != j3) {
                                    long j20 = j4 + jl0Var.b;
                                    jl0Var.h = j20;
                                    j5 = jl0Var.g;
                                    if (j5 != j3 && j20 > j5) {
                                        jl0Var.h = j5;
                                    }
                                    jl0Var.l = j3;
                                }
                            }
                            m();
                        }
                    } else if (!z4) {
                        this.C = l();
                        b(2);
                        if (this.C) {
                            while (a14Var != null) {
                                while (i < r7) {
                                    if (er2Var != null) {
                                        er2Var.i();
                                    }
                                }
                            }
                            jl0Var = this.u;
                            j4 = jl0Var.h;
                            if (j4 != j3) {
                                long j21 = j4 + jl0Var.b;
                                jl0Var.h = j21;
                                j5 = jl0Var.g;
                                if (j5 != j3) {
                                    jl0Var.h = j5;
                                }
                                jl0Var.l = j3;
                            }
                        }
                        m();
                    }
                }
            } else if (this.J == 0) {
                a14 a14Var21 = this.s.h;
                long j22 = a14Var21.f.e;
                if (!a14Var21.d || (j22 != j3 && bw4Var6.r >= j22 && l())) {
                    z5 = true;
                    bw4Var = this.x;
                    if (bw4Var.e == 3) {
                        if (this.J == 0) {
                            a14Var2 = this.s.h;
                            long j110 = a14Var2.f.e;
                            if (a14Var2.d) {
                                this.C = l();
                                b(2);
                                if (this.C) {
                                    while (a14Var != null) {
                                        while (i < r7) {
                                            if (er2Var != null) {
                                                er2Var.i();
                                            }
                                        }
                                    }
                                    jl0Var = this.u;
                                    j4 = jl0Var.h;
                                    if (j4 != j3) {
                                        long j23 = j4 + jl0Var.b;
                                        jl0Var.h = j23;
                                        j5 = jl0Var.g;
                                        if (j5 != j3) {
                                            jl0Var.h = j5;
                                        }
                                        jl0Var.l = j3;
                                    }
                                }
                                m();
                            } else {
                                this.C = l();
                                b(2);
                                if (this.C) {
                                    while (a14Var != null) {
                                        while (i < r7) {
                                            if (er2Var != null) {
                                                er2Var.i();
                                            }
                                        }
                                    }
                                    jl0Var = this.u;
                                    j4 = jl0Var.h;
                                    if (j4 != j3) {
                                        long j24 = j4 + jl0Var.b;
                                        jl0Var.h = j24;
                                        j5 = jl0Var.g;
                                        if (j5 != j3) {
                                            jl0Var.h = j5;
                                        }
                                        jl0Var.l = j3;
                                    }
                                }
                                m();
                            }
                        } else if (!z4) {
                            this.C = l();
                            b(2);
                            if (this.C) {
                                while (a14Var != null) {
                                    while (i < r7) {
                                        if (er2Var != null) {
                                            er2Var.i();
                                        }
                                    }
                                }
                                jl0Var = this.u;
                                j4 = jl0Var.h;
                                if (j4 != j3) {
                                    long j25 = j4 + jl0Var.b;
                                    jl0Var.h = j25;
                                    j5 = jl0Var.g;
                                    if (j5 != j3) {
                                        jl0Var.h = j5;
                                    }
                                    jl0Var.l = j3;
                                }
                            }
                            m();
                        }
                    }
                } else {
                    b(3);
                    this.O = null;
                    if (l()) {
                        this.C = false;
                        ml0 ml0Var = this.o;
                        z5 = true;
                        ml0Var.g = true;
                        eq5Var = ml0Var.b;
                        if (!eq5Var.c) {
                            eq5Var.b.getClass();
                            eq5Var.e = SystemClock.elapsedRealtime();
                            eq5Var.c = true;
                        }
                        for (gs gsVar6 : this.b) {
                            if (!b(gsVar6)) {
                                if (gsVar6.g == 1) {
                                    defpackage.ud.g();
                                    return;
                                } else {
                                    gsVar6.g = 2;
                                    gsVar6.i();
                                }
                            }
                        }
                    }
                }
            } else {
                if (z4) {
                    if (bw4Var6.g) {
                        long j26 = a(bw4Var6.a, this.s.h.f.a) ? this.u.h : j3;
                        a14 a14Var22 = this.s.j;
                        boolean z25 = (!a14Var22.d || (a14Var22.e && a14Var22.a.getBufferedPositionUs() != Long.MIN_VALUE) || !a14Var22.f.i) ? z : true;
                        boolean z26 = (!a14Var22.f.a.a() || a14Var22.d) ? z : true;
                        if (!z25 && !z26) {
                            kl0 kl0Var = this.g;
                            long jA = a(this.x.p);
                            float f = this.o.getPlaybackParameters().b;
                            boolean z27 = this.C;
                            kl0Var.getClass();
                            if (f != 1.0f) {
                                jA = Math.round(jA / ((double) f));
                            }
                            long jMin = z27 ? kl0Var.e : kl0Var.d;
                            if (j26 != j3) {
                                jMin = Math.min(j26 / 2, jMin);
                            }
                            if (jMin > j && jA < jMin) {
                                if (!kl0Var.g) {
                                    aj0 aj0Var2 = kl0Var.a;
                                    synchronized (aj0Var2) {
                                        i2 = aj0Var2.b * 65536;
                                    }
                                    if (i2 >= kl0Var.i) {
                                    }
                                }
                            }
                        }
                    }
                    b(3);
                    this.O = null;
                    if (l()) {
                        this.C = false;
                        ml0 ml0Var2 = this.o;
                        z5 = true;
                        ml0Var2.g = true;
                        eq5Var = ml0Var2.b;
                        if (!eq5Var.c) {
                            eq5Var.b.getClass();
                            eq5Var.e = SystemClock.elapsedRealtime();
                            eq5Var.c = true;
                        }
                        while (i3 < r5) {
                            if (!b(gsVar6)) {
                                if (gsVar6.g == 1) {
                                    defpackage.ud.g();
                                    return;
                                } else {
                                    gsVar6.g = 2;
                                    gsVar6.i();
                                }
                            }
                        }
                    }
                }
                z5 = true;
                bw4Var = this.x;
                if (bw4Var.e == 3) {
                    if (this.J == 0) {
                        a14Var2 = this.s.h;
                        long j111 = a14Var2.f.e;
                        if (a14Var2.d) {
                            this.C = l();
                            b(2);
                            if (this.C) {
                                while (a14Var != null) {
                                    while (i < r7) {
                                        if (er2Var != null) {
                                            er2Var.i();
                                        }
                                    }
                                }
                                jl0Var = this.u;
                                j4 = jl0Var.h;
                                if (j4 != j3) {
                                    long j27 = j4 + jl0Var.b;
                                    jl0Var.h = j27;
                                    j5 = jl0Var.g;
                                    if (j5 != j3) {
                                        jl0Var.h = j5;
                                    }
                                    jl0Var.l = j3;
                                }
                            }
                            m();
                        } else {
                            this.C = l();
                            b(2);
                            if (this.C) {
                                while (a14Var != null) {
                                    while (i < r7) {
                                        if (er2Var != null) {
                                            er2Var.i();
                                        }
                                    }
                                }
                                jl0Var = this.u;
                                j4 = jl0Var.h;
                                if (j4 != j3) {
                                    long j28 = j4 + jl0Var.b;
                                    jl0Var.h = j28;
                                    j5 = jl0Var.g;
                                    if (j5 != j3) {
                                        jl0Var.h = j5;
                                    }
                                    jl0Var.l = j3;
                                }
                            }
                            m();
                        }
                    } else if (!z4) {
                        this.C = l();
                        b(2);
                        if (this.C) {
                            while (a14Var != null) {
                                while (i < r7) {
                                    if (er2Var != null) {
                                        er2Var.i();
                                    }
                                }
                            }
                            jl0Var = this.u;
                            j4 = jl0Var.h;
                            if (j4 != j3) {
                                long j29 = j4 + jl0Var.b;
                                jl0Var.h = j29;
                                j5 = jl0Var.g;
                                if (j5 != j3) {
                                    jl0Var.h = j5;
                                }
                                jl0Var.l = j3;
                            }
                        }
                        m();
                    }
                }
            }
            if (this.x.e == 2) {
                i5 = 0;
                while (true) {
                    gsVarArr = this.b;
                    if (i5 < gsVarArr.length) {
                        break;
                    }
                    if (!b(gsVarArr[i5]) && (mc5Var = this.b[i5].h) == a14Var20.c[i5]) {
                        mc5Var.getClass();
                        mc5Var.a();
                    }
                    i5++;
                }
                bw4Var3 = this.x;
                if (!bw4Var3.g || bw4Var3.q >= 500000 || (a14Var3 = this.s.j) == null) {
                    this.P = C.TIME_UNSET;
                } else if ((!a14Var3.d ? j : a14Var3.a.getNextLoadPositionUs()) == Long.MIN_VALUE) {
                    this.P = C.TIME_UNSET;
                } else {
                    long j30 = this.P;
                    du5 du5Var = this.q;
                    if (j30 == C.TIME_UNSET) {
                        du5Var.getClass();
                        this.P = SystemClock.elapsedRealtime();
                    } else {
                        du5Var.getClass();
                        if (SystemClock.elapsedRealtime() - this.P >= 4000) {
                            defpackage.ah.f("Playback stuck buffering and not loading");
                            return;
                        }
                    }
                }
            } else {
                this.P = C.TIME_UNSET;
            }
            if (l() || this.x.e != 3) {
                z6 = false;
            } else {
                z6 = z5;
            }
            if (this.I || !this.H || !z6) {
                z5 = false;
            }
            bw4Var2 = this.x;
            if (bw4Var2.o != z5) {
                z7 = z5;
                bw4Var2 = new bw4(bw4Var2.a, bw4Var2.b, bw4Var2.c, bw4Var2.d, bw4Var2.e, bw4Var2.f, bw4Var2.g, bw4Var2.h, bw4Var2.i, bw4Var2.j, bw4Var2.k, bw4Var2.l, bw4Var2.m, bw4Var2.n, bw4Var2.p, bw4Var2.q, bw4Var2.r, z7);
                this.x = bw4Var2;
            } else {
                z7 = z5;
            }
            this.H = false;
            if (!z7 || (i4 = bw4Var2.e) == 4) {
            }
            if (z6 || i4 == 2) {
                this.i.a.sendEmptyMessageAtTime(2, jUptimeMillis + 10);
            } else if (i4 == 3 && this.J != 0) {
                this.i.a.sendEmptyMessageAtTime(2, jUptimeMillis + 1000);
            }
            b06.a();
            return;
        }
        b(4);
        m();
        z5 = true;
        if (this.x.e == 2) {
            i5 = 0;
            while (true) {
                gsVarArr = this.b;
                if (i5 < gsVarArr.length) {
                    break;
                    break;
                } else {
                    if (!b(gsVarArr[i5])) {
                    }
                    i5++;
                }
            }
            bw4Var3 = this.x;
            if (bw4Var3.g) {
                this.P = C.TIME_UNSET;
            } else {
                this.P = C.TIME_UNSET;
            }
        } else {
            this.P = C.TIME_UNSET;
        }
        if (l()) {
            z6 = false;
        } else {
            z6 = false;
        }
        if (this.I) {
            z5 = false;
        } else {
            z5 = false;
        }
        bw4Var2 = this.x;
        if (bw4Var2.o != z5) {
            z7 = z5;
            bw4Var2 = new bw4(bw4Var2.a, bw4Var2.b, bw4Var2.c, bw4Var2.d, bw4Var2.e, bw4Var2.f, bw4Var2.g, bw4Var2.h, bw4Var2.i, bw4Var2.j, bw4Var2.k, bw4Var2.l, bw4Var2.m, bw4Var2.n, bw4Var2.p, bw4Var2.q, bw4Var2.r, z7);
            this.x = bw4Var2;
        } else {
            z7 = z5;
        }
        this.H = false;
        if (z7) {
        }
    }

    public final void b(long j) {
        a14 a14Var = this.s.h;
        long j2 = j + (a14Var == null ? MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : a14Var.o);
        this.L = j2;
        this.o.b.a(j2);
        for (gs gsVar : this.b) {
            if (b(gsVar)) {
                long j3 = this.L;
                gsVar.l = false;
                gsVar.k = j3;
                gsVar.a(j3, false);
            }
        }
        for (a14 a14Var2 = this.s.h; a14Var2 != null; a14Var2 = a14Var2.l) {
            for (er2 er2Var : a14Var2.n.c) {
                if (er2Var != null) {
                    er2Var.h();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, yads.z04] */
    public final void c(z04 z04Var) throws up2 {
        a14 a14Var = this.s.j;
        if (a14Var == null || a14Var.a != z04Var) {
            return;
        }
        float f = this.o.getPlaybackParameters().b;
        kx5 kx5Var = this.x.a;
        a14Var.d = true;
        g06 trackGroups = a14Var.a.getTrackGroups();
        a14Var.m = trackGroups;
        q06 q06VarA = a14Var.j.a(a14Var.i, trackGroups, a14Var.f.a, kx5Var);
        for (er2 er2Var : q06VarA.c) {
            if (er2Var != null) {
                er2Var.a(f);
            }
        }
        c14 c14Var = a14Var.f;
        long jMax = c14Var.b;
        long j = c14Var.e;
        if (j != C.TIME_UNSET && jMax >= j) {
            jMax = Math.max(0L, j - 1);
        }
        long jA = a14Var.a(q06VarA, jMax, false, new boolean[a14Var.i.length]);
        long j2 = a14Var.o;
        c14 c14Var2 = a14Var.f;
        long j3 = c14Var2.b;
        a14Var.o = (j3 - jA) + j2;
        if (jA != j3) {
            c14Var2 = new c14(c14Var2.a, jA, c14Var2.c, c14Var2.d, c14Var2.e, c14Var2.f, c14Var2.g, c14Var2.h, c14Var2.i);
        }
        a14Var.f = c14Var2;
        a(a14Var.n);
        if (a14Var == this.s.h) {
            b(a14Var.f.b);
            a(new boolean[this.b.length]);
            bw4 bw4Var = this.x;
            h14 h14Var = bw4Var.b;
            long j4 = a14Var.f.b;
            this.x = a(h14Var, j4, bw4Var.c, j4, false, 5);
        }
        d();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, yads.ui5] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, yads.ui5] */
    public final void d() {
        int i;
        a14 a14Var = this.s.j;
        boolean z = false;
        if (a14Var != null) {
            if ((!a14Var.d ? 0L : a14Var.a.getNextLoadPositionUs()) != Long.MIN_VALUE) {
                a14 a14Var2 = this.s.j;
                long jA = a(a14Var2.d ? a14Var2.a.getNextLoadPositionUs() : 0L);
                a14 a14Var3 = this.s.h;
                kl0 kl0Var = this.g;
                float f = this.o.getPlaybackParameters().b;
                aj0 aj0Var = kl0Var.a;
                synchronized (aj0Var) {
                    i = aj0Var.b * 65536;
                }
                boolean z2 = i >= kl0Var.i;
                long jMin = kl0Var.b;
                if (f > 1.0f) {
                    int i2 = u56.a;
                    if (f != 1.0f) {
                        jMin = Math.round(jMin * ((double) f));
                    }
                    jMin = Math.min(jMin, kl0Var.c);
                }
                if (jA < Math.max(jMin, 500000L)) {
                    z = kl0Var.g || !z2;
                    kl0Var.j = z;
                    if (!z && jA < 500000) {
                        sv3.d("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
                    }
                } else if (jA >= kl0Var.c || z2) {
                    kl0Var.j = false;
                }
                z = kl0Var.j;
            }
        }
        this.D = z;
        if (z) {
            a14 a14Var4 = this.s.j;
            long j = this.L;
            if (a14Var4.l != null) {
                defpackage.ud.g();
                return;
            }
            a14Var4.a.c(j - a14Var4.o);
        }
        n();
    }

    public final void e(boolean z) throws up2 {
        this.F = z;
        d14 d14Var = this.s;
        kx5 kx5Var = this.x.a;
        d14Var.g = z;
        if (!d14Var.a(kx5Var)) {
            b(true);
        }
        a(false);
    }

    public final void f() {
        this.y.a(1);
        throw null;
    }

    public final void g() {
        this.y.a(1);
        a(false, false, false, true);
        this.g.a(false);
        b(this.x.a.c() ? 4 : 2);
        q14 q14Var = this.t;
        zj0 zj0Var = (zj0) this.h;
        zj0Var.getClass();
        if (q14Var.k) {
            defpackage.ud.g();
            return;
        }
        q14Var.l = zj0Var;
        for (int i = 0; i < q14Var.b.size(); i++) {
            p14 p14Var = (p14) q14Var.b.get(i);
            q14Var.a(p14Var);
            q14Var.i.add(p14Var);
        }
        q14Var.k = true;
        this.i.a.sendEmptyMessage(2);
    }

    public final synchronized boolean h() {
        if (!this.z && this.j.isAlive()) {
            this.i.a.sendEmptyMessage(7);
            a(new ut5() { // from class: p2a
                @Override // yads.ut5
                public final Object get() {
                    return this.b.c();
                }
            }, this.v);
            return this.z;
        }
        return true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        boolean z;
        a14 a14Var;
        int i = 1000;
        try {
            switch (message.what) {
                case 0:
                    g();
                    break;
                case 1:
                    a(message.arg2, 1, message.arg1 != 0, true);
                    break;
                case 2:
                    a();
                    break;
                case 3:
                    a((lq2) message.obj);
                    break;
                case 4:
                    a((dw4) message.obj);
                    break;
                case 5:
                    this.w = (th5) message.obj;
                    break;
                case 6:
                    a(false, true);
                    break;
                case 7:
                    i();
                    return true;
                case 8:
                    c((z04) message.obj);
                    break;
                case 9:
                    b((z04) message.obj);
                    break;
                case 10:
                    j();
                    break;
                case 11:
                    a(message.arg1);
                    break;
                case 12:
                    e(message.arg1 != 0);
                    break;
                case 13:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    uw4 uw4Var = (uw4) message.obj;
                    uw4Var.getClass();
                    c(uw4Var);
                    break;
                case 15:
                    d((uw4) message.obj);
                    break;
                case 16:
                    dw4 dw4Var = (dw4) message.obj;
                    a(dw4Var, dw4Var.b, true, false);
                    break;
                case 17:
                    a((hq2) message.obj);
                    break;
                case 18:
                    a((hq2) message.obj, message.arg1);
                    break;
                case 19:
                    fq2.a(message.obj);
                    f();
                    throw null;
                case 20:
                    a(message.arg1, message.arg2, (ik5) message.obj);
                    break;
                case 21:
                    a((ik5) message.obj);
                    break;
                case 22:
                    e();
                    break;
                case 23:
                    d(message.arg1 != 0);
                    break;
                case 24:
                    c(message.arg1 == 1);
                    break;
                case 25:
                    b(true);
                    break;
                default:
                    return false;
            }
        } catch (RuntimeException e) {
            up2 up2Var = new up2(2, e, ((e instanceof IllegalStateException) || (e instanceof IllegalArgumentException)) ? 1004 : 1000);
            sv3.b("ExoPlayerImplInternal", sv3.a("Playback error", up2Var));
            a(true, false);
            this.x = this.x.a(up2Var);
        } catch (rl2 e2) {
            a(e2, e2.b);
        } catch (up2 e3) {
            e = e3;
            if (e.d == 1 && (a14Var = this.s.i) != null) {
                h14 h14Var = a14Var.f.a;
                String message2 = e.getMessage();
                int i2 = u56.a;
                e = new up2(message2, e.getCause(), e.b, e.d, e.e, e.f, e.g, e.h, h14Var, e.c, e.j);
            }
            if (e.j && this.O == null) {
                sv3.d("ExoPlayerImplInternal", sv3.a("Recoverable renderer error", e));
                this.O = e;
                gu5 gu5Var = this.i;
                fu5 fu5VarA = gu5Var.a(25, e);
                Handler handler = gu5Var.a;
                Message message3 = fu5VarA.a;
                message3.getClass();
                handler.sendMessageAtFrontOfQueue(message3);
                fu5VarA.a();
                z = false;
            } else {
                up2 up2Var2 = this.O;
                if (up2Var2 != null) {
                    up2Var2.addSuppressed(e);
                    e = this.O;
                }
                sv3.b("ExoPlayerImplInternal", sv3.a("Playback error", e));
                z = false;
                a(true, false);
                this.x = this.x.a(e);
            }
        } catch (vs e4) {
            a(e4, 1002);
        } catch (xc0 e5) {
            a(e5, e5.b);
        } catch (xs4 e6) {
            int i3 = e6.c;
            if (i3 == 1) {
                i = e6.b ? 3001 : 3003;
            } else if (i3 == 4) {
                i = e6.b ? 3002 : 3004;
            }
            a(e6, i);
        } catch (IOException e7) {
            a(e7, 2000);
        }
        z = false;
        iq2 iq2Var = this.y;
        bw4 bw4Var = this.x;
        boolean z2 = iq2Var.a | (iq2Var.b != bw4Var ? true : z);
        iq2Var.a = z2;
        iq2Var.b = bw4Var;
        if (!z2) {
            return true;
        }
        ((defpackage.x52) this.r).a(iq2Var);
        this.y = new iq2(this.x);
        return true;
    }

    public final void i() {
        a(true, false, true, false);
        this.g.a(true);
        b(1);
        this.j.quit();
        synchronized (this) {
            this.z = true;
            notifyAll();
        }
    }

    public final void j() throws up2 {
        int i;
        float f = this.o.getPlaybackParameters().b;
        d14 d14Var = this.s;
        a14 a14Var = d14Var.h;
        a14 a14Var2 = d14Var.i;
        boolean z = true;
        for (a14 a14Var3 = a14Var; a14Var3 != null && a14Var3.d; a14Var3 = a14Var3.l) {
            q06 q06VarA = a14Var3.j.a(a14Var3.i, a14Var3.m, a14Var3.f.a, this.x.a);
            boolean z2 = false;
            for (er2 er2Var : q06VarA.c) {
                if (er2Var != null) {
                    er2Var.a(f);
                }
            }
            q06 q06Var = a14Var3.n;
            if (q06Var != null && q06Var.c.length == q06VarA.c.length) {
                int i2 = 0;
                while (true) {
                    if (i2 >= q06VarA.c.length) {
                        if (a14Var3 == a14Var2) {
                            z = false;
                        }
                    } else if (u56.a(q06VarA.b[i2], q06Var.b[i2]) && u56.a(q06VarA.c[i2], q06Var.c[i2])) {
                        i2++;
                    }
                }
            }
            d14 d14Var2 = this.s;
            if (z) {
                a14 a14Var4 = d14Var2.h;
                boolean zA = d14Var2.a(a14Var4);
                boolean[] zArr = new boolean[this.b.length];
                long jA = a14Var4.a(q06VarA, this.x.r, zA, zArr);
                bw4 bw4Var = this.x;
                if (bw4Var.e != 4 && jA != bw4Var.r) {
                    z2 = true;
                }
                bw4 bw4Var2 = this.x;
                i = 4;
                this.x = a(bw4Var2.b, jA, bw4Var2.c, bw4Var2.d, z2, 5);
                if (z2) {
                    b(jA);
                }
                boolean[] zArr2 = new boolean[this.b.length];
                int i3 = 0;
                while (true) {
                    gs[] gsVarArr = this.b;
                    if (i3 >= gsVarArr.length) {
                        break;
                    }
                    gs gsVar = gsVarArr[i3];
                    boolean zB = b(gsVar);
                    zArr2[i3] = zB;
                    mc5 mc5Var = a14Var4.c[i3];
                    if (zB) {
                        if (mc5Var != gsVar.h) {
                            a(gsVar);
                        } else if (zArr[i3]) {
                            long j = this.L;
                            gsVar.l = false;
                            gsVar.k = j;
                            gsVar.a(j, false);
                        }
                    }
                    i3++;
                }
                a(zArr2);
            } else {
                i = 4;
                d14Var2.a(a14Var3);
                if (a14Var3.d) {
                    a14Var3.a(q06VarA, Math.max(a14Var3.f.b, this.L - a14Var3.o), false, new boolean[a14Var3.i.length]);
                }
            }
            a(true);
            if (this.x.e != i) {
                d();
                o();
                this.i.a.sendEmptyMessage(2);
                return;
            }
            return;
        }
    }

    public final void k() {
        a14 a14Var = this.s.h;
        this.B = a14Var != null && a14Var.f.h && this.A;
    }

    public final boolean l() {
        bw4 bw4Var = this.x;
        return bw4Var.l && bw4Var.m == 0;
    }

    public final void m() {
        int i;
        ml0 ml0Var = this.o;
        ml0Var.g = false;
        eq5 eq5Var = ml0Var.b;
        if (eq5Var.c) {
            eq5Var.a(eq5Var.a());
            eq5Var.c = false;
        }
        for (gs gsVar : this.b) {
            if (b(gsVar) && (i = gsVar.g) == 2) {
                if (i != 2) {
                    defpackage.ud.g();
                    return;
                } else {
                    gsVar.g = 1;
                    gsVar.j();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, yads.ui5] */
    public final void n() {
        a14 a14Var = this.s.j;
        boolean z = this.D || (a14Var != null && a14Var.a.isLoading());
        bw4 bw4Var = this.x;
        if (z != bw4Var.g) {
            this.x = new bw4(bw4Var.a, bw4Var.b, bw4Var.c, bw4Var.d, bw4Var.e, bw4Var.f, z, bw4Var.h, bw4Var.i, bw4Var.j, bw4Var.k, bw4Var.l, bw4Var.m, bw4Var.n, bw4Var.p, bw4Var.q, bw4Var.r, bw4Var.o);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ba  */
    /* JADX WARN: Type inference failed for: r2v22, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object, yads.ui5] */
    public final void o() {
        dw4 playbackParameters;
        long j;
        float f;
        long jMax;
        a14 a14Var = this.s.h;
        if (a14Var == null) {
            return;
        }
        long discontinuity = a14Var.d ? a14Var.a.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            b(discontinuity);
            if (discontinuity != this.x.r) {
                bw4 bw4Var = this.x;
                this.x = a(bw4Var.b, discontinuity, bw4Var.c, discontinuity, true, 5);
            }
        } else {
            ml0 ml0Var = this.o;
            boolean z = a14Var != this.s.i;
            gs gsVar = ml0Var.d;
            if (gsVar == null || gsVar.e() || (!ml0Var.d.f() && (z || ml0Var.d.d()))) {
                ml0Var.f = true;
                if (ml0Var.g) {
                    eq5 eq5Var = ml0Var.b;
                    if (!eq5Var.c) {
                        eq5Var.b.getClass();
                        eq5Var.e = SystemClock.elapsedRealtime();
                        eq5Var.c = true;
                    }
                }
            } else {
                my3 my3Var = ml0Var.e;
                my3Var.getClass();
                long jA = my3Var.a();
                if (!ml0Var.f) {
                    ml0Var.b.a(jA);
                    playbackParameters = my3Var.getPlaybackParameters();
                    if (!playbackParameters.equals(ml0Var.b.f)) {
                        ml0Var.b.a(playbackParameters);
                        ml0Var.c.i.a(16, playbackParameters).b();
                    }
                } else if (jA < ml0Var.b.a()) {
                    eq5 eq5Var2 = ml0Var.b;
                    if (eq5Var2.c) {
                        eq5Var2.a(eq5Var2.a());
                        eq5Var2.c = false;
                    }
                } else {
                    ml0Var.f = false;
                    if (ml0Var.g) {
                        eq5 eq5Var3 = ml0Var.b;
                        if (!eq5Var3.c) {
                            eq5Var3.b.getClass();
                            eq5Var3.e = SystemClock.elapsedRealtime();
                            eq5Var3.c = true;
                        }
                    }
                    ml0Var.b.a(jA);
                    playbackParameters = my3Var.getPlaybackParameters();
                    if (!playbackParameters.equals(ml0Var.b.f)) {
                        ml0Var.b.a(playbackParameters);
                        ml0Var.c.i.a(16, playbackParameters).b();
                    }
                }
            }
            long jA2 = ml0Var.a();
            this.L = jA2;
            long j2 = jA2 - a14Var.o;
            long j3 = this.x.r;
            if (!this.p.isEmpty() && !this.x.b.a()) {
                if (this.N) {
                    this.N = false;
                }
                bw4 bw4Var2 = this.x;
                bw4Var2.a.a(bw4Var2.b.a);
                int iMin = Math.min(this.M, this.p.size());
                if (iMin > 0 && this.p.get(iMin - 1) != null) {
                    throw new ClassCastException();
                }
                if (iMin < this.p.size() && this.p.get(iMin) != null) {
                    throw new ClassCastException();
                }
                this.M = iMin;
            }
            this.x.r = j2;
        }
        a14 a14Var2 = this.s.j;
        bw4 bw4Var3 = this.x;
        if (a14Var2.d) {
            long bufferedPositionUs = a14Var2.e ? a14Var2.a.getBufferedPositionUs() : Long.MIN_VALUE;
            j = bufferedPositionUs == Long.MIN_VALUE ? a14Var2.f.e : bufferedPositionUs;
        } else {
            j = a14Var2.f.b;
        }
        bw4Var3.p = j;
        bw4 bw4Var4 = this.x;
        bw4Var4.q = a(bw4Var4.p);
        bw4 bw4Var5 = this.x;
        if (bw4Var5.l && bw4Var5.e == 3 && a(bw4Var5.a, bw4Var5.b)) {
            bw4 bw4Var6 = this.x;
            float fMax = 1.0f;
            if (bw4Var6.n.b == 1.0f) {
                jl0 jl0Var = this.u;
                long jA3 = a(bw4Var6.a, bw4Var6.b.a, bw4Var6.r);
                long jA4 = a(this.x.p);
                if (jl0Var.c != C.TIME_UNSET) {
                    long j4 = jA3 - jA4;
                    long j5 = jl0Var.m;
                    if (j5 == C.TIME_UNSET) {
                        jl0Var.m = j4;
                        jl0Var.n = 0L;
                    } else {
                        long jMax2 = Math.max(j4, (long) ((j4 * 9.999871E-4f) + (j5 * 0.999f)));
                        jl0Var.m = jMax2;
                        jl0Var.n = (long) ((Math.abs(j4 - jMax2) * 9.999871E-4f) + (jl0Var.n * 0.999f));
                    }
                    if (jl0Var.l == r10 || SystemClock.elapsedRealtime() - jl0Var.l >= 1000) {
                        jl0Var.l = SystemClock.elapsedRealtime();
                        long j6 = (jl0Var.n * 3) + jl0Var.m;
                        if (jl0Var.h > j6) {
                            float fA = u56.a(1000L);
                            f = 1.0E-7f;
                            long[] jArr = {j6, jl0Var.e, jl0Var.h - (((long) ((jl0Var.k - 1.0f) * fA)) + ((long) ((jl0Var.i - 1.0f) * fA)))};
                            jMax = jArr[0];
                            for (int i = 1; i < 3; i++) {
                                long j7 = jArr[i];
                                if (j7 > jMax) {
                                    jMax = j7;
                                }
                            }
                            jl0Var.h = jMax;
                        } else {
                            f = 1.0E-7f;
                            long jMax3 = jA3 - ((long) (Math.max(0.0f, jl0Var.k - 1.0f) / 1.0E-7f));
                            long j8 = jl0Var.h;
                            int i2 = u56.a;
                            jMax = Math.max(j8, Math.min(jMax3, j6));
                            jl0Var.h = jMax;
                            long j9 = jl0Var.g;
                            if (j9 != -9223372036854775807 && jMax > j9) {
                                jl0Var.h = j9;
                                jMax = j9;
                            }
                        }
                        long j10 = jA3 - jMax;
                        if (Math.abs(j10) < jl0Var.a) {
                            jl0Var.k = 1.0f;
                        } else {
                            float f2 = (j10 * f) + 1.0f;
                            float f3 = jl0Var.j;
                            float f4 = jl0Var.i;
                            int i3 = u56.a;
                            fMax = Math.max(f3, Math.min(f2, f4));
                            jl0Var.k = fMax;
                        }
                    } else {
                        fMax = jl0Var.k;
                    }
                }
                if (this.o.getPlaybackParameters().b != fMax) {
                    this.o.a(new dw4(fMax, this.x.n.c));
                    a(this.x.n, this.o.getPlaybackParameters().b, false, false);
                }
            }
        }
    }

    public final void e() throws Throwable {
        a(this.t.a(), true);
    }

    public final void b(int i) {
        bw4 bw4Var = this.x;
        if (bw4Var.e != i) {
            if (i != 2) {
                this.P = C.TIME_UNSET;
            }
            this.x = bw4Var.a(i);
        }
    }

    public final void b(boolean z) throws up2 {
        h14 h14Var = this.s.h.f.a;
        long jA = a(h14Var, this.x.r, true, false);
        if (jA != this.x.r) {
            bw4 bw4Var = this.x;
            this.x = a(h14Var, jA, bw4Var.c, bw4Var.d, z, 5);
        }
    }

    public static boolean b(gs gsVar) {
        return gsVar.g != 0;
    }

    public final void b(uw4 uw4Var) {
        try {
            a(uw4Var);
        } catch (up2 e) {
            sv3.b("ExoPlayerImplInternal", sv3.a("Unexpected error delivering message on external thread.", e));
            defpackage.ti0.f(e);
        }
    }

    public final long b() {
        a14 a14Var = this.s.i;
        if (a14Var == null) {
            return 0L;
        }
        long jMax = a14Var.o;
        if (!a14Var.d) {
            return jMax;
        }
        int i = 0;
        while (true) {
            gs[] gsVarArr = this.b;
            if (i >= gsVarArr.length) {
                return jMax;
            }
            if (b(gsVarArr[i])) {
                gs gsVar = this.b[i];
                if (gsVar.h != a14Var.c[i]) {
                    continue;
                } else {
                    long j = gsVar.k;
                    if (j == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    jMax = Math.max(j, jMax);
                }
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, yads.ui5] */
    public final void b(z04 z04Var) {
        ?? r1;
        a14 a14Var = this.s.j;
        if (a14Var == null || (r1 = a14Var.a) != z04Var) {
            return;
        }
        long j = this.L;
        if (a14Var.l == null) {
            if (a14Var.d) {
                r1.reevaluateBuffer(j - a14Var.o);
            }
            d();
            return;
        }
        defpackage.ud.g();
    }

    public final void d(boolean z) throws up2 {
        this.A = z;
        k();
        if (this.B) {
            d14 d14Var = this.s;
            if (d14Var.i != d14Var.h) {
                b(true);
                a(false);
            }
        }
    }

    public final void d(uw4 uw4Var) {
        Looper looper = uw4Var.f;
        if (!looper.getThread().isAlive()) {
            sv3.d("TAG", "Trying to send message on a dead thread.");
            uw4Var.a(false);
        } else {
            this.q.getClass();
            new Handler(looper, null).post(new defpackage.yg4(2, this, uw4Var));
        }
    }

    public final /* synthetic */ Boolean c() {
        return Boolean.valueOf(this.z);
    }

    public final void c(boolean z) {
        if (z == this.I) {
            return;
        }
        this.I = z;
        if (z || !this.x.o) {
            return;
        }
        this.i.a.sendEmptyMessage(2);
    }

    public final void c(uw4 uw4Var) {
        if (uw4Var.f == this.k) {
            a(uw4Var);
            int i = this.x.e;
            if (i == 3 || i == 2) {
                this.i.a.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.i.a(15, uw4Var).b();
    }

    public final void a(IOException iOException, int i) {
        up2 up2Var = new up2(0, iOException, i);
        a14 a14Var = this.s.h;
        if (a14Var != null) {
            h14 h14Var = a14Var.f.a;
            String message = up2Var.getMessage();
            int i2 = u56.a;
            up2Var = new up2(message, up2Var.getCause(), up2Var.b, up2Var.d, up2Var.e, up2Var.f, up2Var.g, up2Var.h, h14Var, up2Var.c, up2Var.j);
        }
        sv3.b("ExoPlayerImplInternal", sv3.a("Playback error", up2Var));
        a(false, false);
        this.x = this.x.a(up2Var);
    }

    public static void a(gs gsVar, long j) {
        gsVar.l = true;
        if (gsVar instanceof hw5) {
            hw5 hw5Var = (hw5) gsVar;
            if (hw5Var.l) {
                hw5Var.B = j;
            } else {
                defpackage.ud.g();
            }
        }
    }

    @Override // yads.y04
    public final void a(z04 z04Var) {
        this.i.a(8, z04Var).b();
    }

    public final synchronized void a(ut5 ut5Var, long j) {
        this.q.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) ut5Var.get()).booleanValue() && j > 0) {
            try {
                this.q.getClass();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            this.q.getClass();
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final void a(hq2 hq2Var) throws Throwable {
        this.y.a(1);
        if (hq2Var.c != -1) {
            this.K = new lq2(new hx4(hq2Var.a, hq2Var.b), hq2Var.c, hq2Var.d);
        }
        q14 q14Var = this.t;
        ArrayList arrayList = hq2Var.a;
        ik5 ik5Var = hq2Var.b;
        q14Var.a(0, q14Var.b.size());
        a(q14Var.a(q14Var.b.size(), arrayList, ik5Var), false);
    }

    public final void a(hq2 hq2Var, int i) throws Throwable {
        this.y.a(1);
        q14 q14Var = this.t;
        if (i == -1) {
            i = q14Var.b.size();
        }
        a(q14Var.a(i, hq2Var.a, hq2Var.b), false);
    }

    public final void a(int i, int i2, ik5 ik5Var) throws Throwable {
        this.y.a(1);
        q14 q14Var = this.t;
        q14Var.getClass();
        if (i >= 0 && i <= i2 && i2 <= q14Var.b.size()) {
            q14Var.j = ik5Var;
            q14Var.a(i, i2);
            a(q14Var.a(), false);
            return;
        }
        defpackage.mi2.b();
    }

    public final void a(ik5 ik5Var) throws Throwable {
        this.y.a(1);
        q14 q14Var = this.t;
        int size = q14Var.b.size();
        if (ik5Var.b.length != size) {
            ik5Var = new ik5(new Random(ik5Var.a.nextLong())).a(size);
        }
        q14Var.j = ik5Var;
        a(q14Var.a(), false);
    }

    public final void a(int i, int i2, boolean z, boolean z2) {
        this.y.a(z2 ? 1 : 0);
        iq2 iq2Var = this.y;
        iq2Var.a = true;
        iq2Var.f = true;
        iq2Var.g = i2;
        bw4 bw4Var = this.x;
        this.x = new bw4(bw4Var.a, bw4Var.b, bw4Var.c, bw4Var.d, bw4Var.e, bw4Var.f, bw4Var.g, bw4Var.h, bw4Var.i, bw4Var.j, bw4Var.k, z, i, bw4Var.n, bw4Var.p, bw4Var.q, bw4Var.r, bw4Var.o);
        this.C = false;
        for (a14 a14Var = this.s.h; a14Var != null; a14Var = a14Var.l) {
            for (er2 er2Var : a14Var.n.c) {
                if (er2Var != null) {
                    er2Var.a(z);
                }
            }
        }
        if (!l()) {
            m();
            o();
            return;
        }
        int i3 = this.x.e;
        if (i3 != 3) {
            if (i3 == 2) {
                this.i.a.sendEmptyMessage(2);
                return;
            }
            return;
        }
        this.C = false;
        ml0 ml0Var = this.o;
        ml0Var.g = true;
        eq5 eq5Var = ml0Var.b;
        if (!eq5Var.c) {
            eq5Var.b.getClass();
            eq5Var.e = SystemClock.elapsedRealtime();
            eq5Var.c = true;
        }
        for (gs gsVar : this.b) {
            if (b(gsVar)) {
                if (gsVar.g == 1) {
                    gsVar.g = 2;
                    gsVar.i();
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
        }
        this.i.a.sendEmptyMessage(2);
    }

    public final void a(int i) throws up2 {
        this.E = i;
        d14 d14Var = this.s;
        kx5 kx5Var = this.x.a;
        d14Var.f = i;
        if (!d14Var.a(kx5Var)) {
            b(true);
        }
        a(false);
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        this.i.a(9, (z04) ui5Var).b();
    }

    public final long a(kx5 kx5Var, Object obj, long j) {
        long jElapsedRealtime;
        kx5Var.a(kx5Var.a(obj, this.m).d, this.l, 0L);
        jx5 jx5Var = this.l;
        if (jx5Var.g != C.TIME_UNSET && jx5Var.a()) {
            jx5 jx5Var2 = this.l;
            if (jx5Var2.j) {
                long j2 = jx5Var2.h;
                int i = u56.a;
                if (j2 == C.TIME_UNSET) {
                    jElapsedRealtime = System.currentTimeMillis();
                } else {
                    jElapsedRealtime = j2 + SystemClock.elapsedRealtime();
                }
                return u56.a(jElapsedRealtime - this.l.g) - (j + this.m.f);
            }
        }
        return C.TIME_UNSET;
    }

    public final boolean a(kx5 kx5Var, h14 h14Var) {
        if (!h14Var.a() && !kx5Var.c()) {
            kx5Var.a(kx5Var.a(h14Var.a, this.m).d, this.l, 0L);
            if (this.l.a()) {
                jx5 jx5Var = this.l;
                if (jx5Var.j && jx5Var.g != C.TIME_UNSET) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object, yads.z04] */
    public final void a(lq2 lq2Var) throws Throwable {
        long jLongValue;
        h14 h14VarA;
        long j;
        boolean z;
        long j2;
        long j3;
        long jA;
        bw4 bw4Var;
        int i;
        h14 h14Var;
        boolean z2;
        long j4;
        this.y.a(1);
        Pair pairA = a(this.x.a, lq2Var, true, this.E, this.F, this.l, this.m);
        if (pairA == null) {
            Pair pairA2 = a(this.x.a);
            h14VarA = (h14) pairA2.first;
            jLongValue = ((Long) pairA2.second).longValue();
            z = !this.x.a.c();
            j2 = -9223372036854775807L;
            j = 0;
        } else {
            Object obj = pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            long j5 = lq2Var.c == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
            h14VarA = this.s.a(this.x.a, obj, jLongValue);
            if (h14VarA.a()) {
                this.x.a.a(h14VarA.a, this.m);
                jLongValue = this.m.a(h14VarA.b) == h14VarA.c ? this.m.h.c : 0L;
                j = 0;
            } else {
                j = 0;
                if (lq2Var.c != C.TIME_UNSET) {
                    z = false;
                }
                j2 = j5;
            }
            z = true;
            j2 = j5;
        }
        try {
            if (this.x.a.c()) {
                this.K = lq2Var;
            } else {
                bw4 bw4Var2 = this.x;
                if (pairA == null) {
                    if (bw4Var2.e != 1) {
                        b(4);
                    }
                    a(false, true, false, true);
                } else {
                    if (h14VarA.equals(bw4Var2.b)) {
                        try {
                            a14 a14Var = this.s.h;
                            jA = (a14Var == null || !a14Var.d || jLongValue == j) ? jLongValue : a14Var.a.a(jLongValue, this.w);
                            if (u56.b(jA) != u56.b(this.x.r) || ((i = (bw4Var = this.x).e) != 2 && i != 3)) {
                            }
                            long j6 = bw4Var.r;
                            this.x = a(h14VarA, j6, j2, j6, z, 2);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            h14VarA = h14VarA;
                            j3 = jLongValue;
                            this.x = a(h14VarA, j3, j2, j3, z, 2);
                            throw th;
                        }
                    }
                    jA = jLongValue;
                    try {
                        boolean z3 = this.x.e == 4;
                        d14 d14Var = this.s;
                        long jA2 = a(h14VarA, jA, d14Var.h != d14Var.i, z3);
                        boolean z4 = z | (jLongValue != jA2);
                        try {
                            bw4 bw4Var3 = this.x;
                            h14 h14Var2 = h14VarA;
                            try {
                                kx5 kx5Var = bw4Var3.a;
                                long j7 = j2;
                                try {
                                    a(kx5Var, h14Var2, kx5Var, bw4Var3.b, j7);
                                    h14Var = h14Var2;
                                    j2 = j7;
                                    z2 = z4;
                                    j4 = jA2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    h14VarA = h14Var2;
                                    j2 = j7;
                                    z = z4;
                                    j3 = jA2;
                                    this.x = a(h14VarA, j3, j2, j3, z, 2);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                h14VarA = h14Var2;
                                j2 = j2;
                                z = z4;
                                j3 = jA2;
                                this.x = a(h14VarA, j3, j2, j3, z, 2);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        j2 = j2;
                        j3 = jLongValue;
                        this.x = a(h14VarA, j3, j2, j3, z, 2);
                        throw th;
                    }
                }
                this.x = a(h14Var, j4, j2, j4, z2, 2);
            }
            z2 = z;
            h14Var = h14VarA;
            j4 = jLongValue;
            this.x = a(h14Var, j4, j2, j4, z2, 2);
        } catch (Throwable th6) {
            th = th6;
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, yads.z04] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, yads.z04] */
    public final long a(h14 h14Var, long j, boolean z, boolean z2) throws up2 {
        d14 d14Var;
        long jSeekToUs;
        long j2;
        m();
        this.C = false;
        if (z2 || this.x.e == 3) {
            b(2);
        }
        a14 a14Var = this.s.h;
        a14 a14Var2 = a14Var;
        while (a14Var2 != null && !h14Var.equals(a14Var2.f.a)) {
            a14Var2 = a14Var2.l;
        }
        if (z || a14Var != a14Var2 || (a14Var2 != null && j + a14Var2.o < 0)) {
            for (gs gsVar : this.b) {
                a(gsVar);
            }
            if (a14Var2 != null) {
                while (true) {
                    d14Var = this.s;
                    if (d14Var.h == a14Var2) {
                        break;
                    }
                    d14Var.a();
                }
                d14Var.a(a14Var2);
                a14Var2.o = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
                a(new boolean[this.b.length]);
            }
        }
        d14 d14Var2 = this.s;
        if (a14Var2 != null) {
            d14Var2.a(a14Var2);
            if (!a14Var2.d) {
                c14 c14Var = a14Var2.f;
                if (j == c14Var.b) {
                    j2 = j;
                } else {
                    j2 = j;
                    c14Var = new c14(c14Var.a, j2, c14Var.c, c14Var.d, c14Var.e, c14Var.f, c14Var.g, c14Var.h, c14Var.i);
                }
                a14Var2.f = c14Var;
            } else {
                a14 a14Var3 = a14Var2;
                j2 = j;
                if (a14Var3.e) {
                    jSeekToUs = a14Var3.a.seekToUs(j2);
                    a14Var3.a.a(jSeekToUs - this.n);
                }
                b(jSeekToUs);
                d();
            }
            jSeekToUs = j2;
            b(jSeekToUs);
            d();
        } else {
            d14Var2.b();
            b(j);
            jSeekToUs = j;
        }
        a(false);
        this.i.a.sendEmptyMessage(2);
        return jSeekToUs;
    }

    public final void a(dw4 dw4Var) {
        this.o.a(dw4Var);
        dw4 playbackParameters = this.o.getPlaybackParameters();
        a(playbackParameters, playbackParameters.b, true, true);
    }

    public final void a(boolean z, AtomicBoolean atomicBoolean) {
        if (this.G != z) {
            this.G = z;
            if (!z) {
                for (gs gsVar : this.b) {
                    if (!b(gsVar) && this.c.remove(gsVar)) {
                        if (gsVar.g == 0) {
                            a03 a03Var = gsVar.c;
                            a03Var.a = null;
                            a03Var.b = null;
                            gsVar.h();
                        } else {
                            defpackage.ud.g();
                            return;
                        }
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    public final void a(boolean z, boolean z2) {
        a(z || !this.G, false, true, false);
        this.y.a(z2 ? 1 : 0);
        this.g.a(true);
        b(1);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:44:0x00da A[PHI: r4 r5 r7
      0x00da: PHI (r4v4 yads.h14) = (r4v3 yads.h14), (r4v12 yads.h14) binds: [B:39:0x00af, B:41:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00da: PHI (r5v2 long) = (r5v1 long), (r5v11 long) binds: [B:39:0x00af, B:41:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00da: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:39:0x00af, B:41:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    public final void a(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        boolean z5;
        List list;
        this.i.a.removeMessages(2);
        this.O = null;
        this.C = false;
        ml0 ml0Var = this.o;
        ml0Var.g = false;
        eq5 eq5Var = ml0Var.b;
        if (eq5Var.c) {
            eq5Var.a(eq5Var.a());
            eq5Var.c = false;
        }
        this.L = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        for (gs gsVar : this.b) {
            try {
                a(gsVar);
            } catch (RuntimeException | up2 e) {
                sv3.b("ExoPlayerImplInternal", sv3.a("Disable failed.", e));
            }
        }
        if (z) {
            for (gs gsVar2 : this.b) {
                if (this.c.remove(gsVar2)) {
                    try {
                        if (gsVar2.g == 0) {
                            a03 a03Var = gsVar2.c;
                            a03Var.a = null;
                            a03Var.b = null;
                            gsVar2.h();
                        } else {
                            throw new IllegalStateException();
                        }
                    } catch (RuntimeException e2) {
                        sv3.b("ExoPlayerImplInternal", sv3.a("Reset failed.", e2));
                    }
                }
            }
        }
        this.J = 0;
        bw4 bw4Var = this.x;
        h14 h14Var = bw4Var.b;
        long jLongValue = bw4Var.r;
        if (!this.x.b.a()) {
            bw4 bw4Var2 = this.x;
            hx5 hx5Var = this.m;
            h14 h14Var2 = bw4Var2.b;
            kx5 kx5Var = bw4Var2.a;
            if (!kx5Var.c() && !kx5Var.a(h14Var2.a, hx5Var).g) {
                j = this.x.r;
            } else {
                j = this.x.c;
            }
        } else {
            j = this.x.c;
        }
        if (z2) {
            this.K = null;
            Pair pairA = a(this.x.a);
            h14Var = (h14) pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            boolean zEquals = h14Var.equals(this.x.b);
            j = C.TIME_UNSET;
            if (zEquals) {
                z5 = false;
            } else {
                z5 = true;
            }
        } else {
            z5 = false;
        }
        long j2 = jLongValue;
        h14 h14Var3 = h14Var;
        this.s.b();
        this.D = false;
        bw4 bw4Var3 = this.x;
        kx5 kx5Var2 = bw4Var3.a;
        int i = bw4Var3.e;
        up2 up2Var = z4 ? null : bw4Var3.f;
        g06 g06Var = z5 ? g06.e : bw4Var3.h;
        q06 q06Var = z5 ? this.f : bw4Var3.i;
        if (z5) {
            le3 le3Var = oe3.c;
            list = k55.f;
        } else {
            list = bw4Var3.j;
        }
        this.x = new bw4(kx5Var2, h14Var3, j, j2, i, up2Var, false, g06Var, q06Var, list, h14Var3, bw4Var3.l, bw4Var3.m, bw4Var3.n, j2, 0L, j2, false);
        if (z3) {
            q14 q14Var = this.t;
            for (o14 o14Var : q14Var.h.values()) {
                try {
                    o14Var.a.c(o14Var.b);
                } catch (RuntimeException e3) {
                    sv3.b("MediaSourceList", sv3.a("Failed to release child source.", e3));
                }
                o14Var.a.a((l14) o14Var.c);
                o14Var.a.a((ul2) o14Var.c);
            }
            q14Var.h.clear();
            q14Var.i.clear();
            q14Var.k = false;
        }
    }

    public final Pair a(kx5 kx5Var) {
        long j = 0;
        if (kx5Var.c()) {
            return Pair.create(bw4.s, 0L);
        }
        Pair pairA = kx5Var.a(this.l, this.m, kx5Var.a(this.F), C.TIME_UNSET);
        h14 h14VarA = this.s.a(kx5Var, pairA.first, 0L);
        long jLongValue = ((Long) pairA.second).longValue();
        if (h14VarA.a()) {
            kx5Var.a(h14VarA.a, this.m);
            if (h14VarA.c == this.m.a(h14VarA.b)) {
                j = this.m.h.c;
            }
        } else {
            j = jLongValue;
        }
        return Pair.create(h14VarA, Long.valueOf(j));
    }

    public static void a(uw4 uw4Var) {
        synchronized (uw4Var) {
        }
        try {
            uw4Var.a.a(uw4Var.d, uw4Var.e);
        } finally {
            uw4Var.a(true);
        }
    }

    public final void a(kx5 kx5Var, kx5 kx5Var2) {
        if (kx5Var.c() && kx5Var2.c()) {
            return;
        }
        int size = this.p.size() - 1;
        ArrayList arrayList = this.p;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            fq2.a(arrayList.get(size));
            throw null;
        }
    }

    public final void a(gs gsVar) {
        if (b(gsVar)) {
            ml0 ml0Var = this.o;
            if (gsVar == ml0Var.d) {
                ml0Var.e = null;
                ml0Var.d = null;
                ml0Var.f = true;
            }
            int i = gsVar.g;
            if (i == 2) {
                if (i == 2) {
                    gsVar.g = 1;
                    gsVar.j();
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
            if (gsVar.g == 1) {
                a03 a03Var = gsVar.c;
                a03Var.a = null;
                a03Var.b = null;
                gsVar.g = 0;
                gsVar.h = null;
                gsVar.i = null;
                gsVar.l = false;
                gsVar.g();
                this.J--;
                return;
            }
            defpackage.ud.g();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0213  */
    /* JADX WARN: Code duplicated, block: B:179:0x0309  */
    /* JADX WARN: Code duplicated, block: B:199:0x0345  */
    /* JADX WARN: Code duplicated, block: B:200:0x0348  */
    /* JADX WARN: Code duplicated, block: B:203:0x0351  */
    /* JADX WARN: Code duplicated, block: B:205:0x0359  */
    /* JADX WARN: Code duplicated, block: B:207:0x0363 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:213:0x0378  */
    /* JADX WARN: Code duplicated, block: B:216:0x0385  */
    /* JADX WARN: Code duplicated, block: B:218:0x0389  */
    /* JADX WARN: Code duplicated, block: B:222:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:229:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:231:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:234:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:236:0x03db  */
    /* JADX WARN: Code duplicated, block: B:238:0x03e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:244:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:247:0x0406  */
    /* JADX WARN: Code duplicated, block: B:249:0x040e  */
    /* JADX WARN: Code duplicated, block: B:253:0x0430  */
    /* JADX WARN: Code duplicated, block: B:97:0x0201  */
    /* JADX WARN: Code duplicated, block: B:99:0x0207  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [yads.bw4] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r2v13, types: [yads.kx5] */
    /* JADX WARN: Type inference failed for: r2v18, types: [yads.bw4] */
    /* JADX WARN: Type inference failed for: r2v24, types: [yads.kx5] */
    /* JADX WARN: Type inference failed for: r37v0, types: [yads.mq2] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(kx5 kx5Var, boolean z) throws Throwable {
        long jLongValue;
        jx5 jx5Var;
        int iA;
        long jLongValue2;
        Object obj;
        int iA2;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        kx5 kx5Var2;
        long jLongValue3;
        long j;
        ?? r7;
        boolean z6;
        long j2;
        kq2 kq2Var;
        long j3;
        int i2;
        boolean z7;
        ?? r12;
        h14 h14Var;
        long j4;
        boolean z8;
        long j5;
        h14 h14Var2;
        ?? r2;
        Object obj2;
        boolean z9;
        int i3;
        boolean z10;
        ?? r13;
        long jA;
        ?? r8;
        h14 h14Var3;
        ?? r3;
        long j6;
        Object obj3;
        boolean z11;
        int i4;
        kx5 kx5Var3;
        bw4 bw4Var = this.x;
        lq2 lq2Var = this.K;
        d14 d14Var = this.s;
        int i5 = this.E;
        boolean z12 = this.F;
        jx5 jx5Var2 = this.l;
        hx5 hx5Var = this.m;
        if (kx5Var.c()) {
            kx5Var2 = kx5Var;
            kq2Var = new kq2(bw4.s, 0L, C.TIME_UNSET, false, true, false);
        } else {
            h14 h14Var4 = bw4Var.b;
            Object obj4 = h14Var4.a;
            kx5 kx5Var4 = bw4Var.a;
            boolean z13 = kx5Var4.c() || kx5Var4.a(h14Var4.a, hx5Var).g;
            if (!bw4Var.b.a() && !z13) {
                jLongValue = bw4Var.r;
            } else {
                jLongValue = bw4Var.c;
            }
            if (lq2Var != null) {
                jx5Var = jx5Var2;
                Pair pairA = a(kx5Var, lq2Var, true, i5, z12, jx5Var, hx5Var);
                if (pairA == null) {
                    iA2 = kx5Var.a(z12);
                    jx5Var = jx5Var;
                    obj = obj4;
                    i = -1;
                    z2 = false;
                    z3 = true;
                    z4 = false;
                } else {
                    long j7 = lq2Var.c;
                    obj = pairA.first;
                    if (j7 == C.TIME_UNSET) {
                        int i6 = kx5Var.a(obj, hx5Var).d;
                        jLongValue = jLongValue;
                        obj = obj4;
                        z7 = false;
                        iA2 = i6;
                    } else {
                        jLongValue = ((Long) pairA.second).longValue();
                        z7 = true;
                        iA2 = -1;
                    }
                    z4 = z7;
                    if (bw4Var.e == 4) {
                        i = -1;
                        z2 = true;
                    } else {
                        i = -1;
                        z2 = false;
                    }
                    z3 = false;
                }
            } else {
                Object obj5 = obj4;
                if (bw4Var.a.c()) {
                    iA2 = kx5Var.a(z12);
                    jx5Var = jx5Var2;
                } else {
                    if (kx5Var.a(obj5) == -1) {
                        Object objA = a(jx5Var2, hx5Var, i5, z12, obj5, bw4Var.a, kx5Var);
                        jx5Var = jx5Var2;
                        if (objA == null) {
                            hx5Var = hx5Var;
                            obj5 = obj5;
                            iA = kx5Var.a(z12);
                            z5 = true;
                        } else {
                            hx5Var = hx5Var;
                            obj5 = obj5;
                            iA = kx5Var.a(objA, hx5Var).d;
                        }
                        iA2 = iA;
                        z3 = z5;
                        obj = obj5;
                        i = -1;
                        z2 = false;
                        z4 = false;
                    } else {
                        jx5Var = jx5Var2;
                        if (jLongValue == C.TIME_UNSET) {
                            iA2 = kx5Var.a(obj5, hx5Var).d;
                        } else if (z13) {
                            bw4Var.a.a(h14Var4.a, hx5Var);
                            if (bw4Var.a.a(hx5Var.d, jx5Var, 0L).p == bw4Var.a.a(h14Var4.a)) {
                                Pair pairA2 = kx5Var.a(jx5Var, hx5Var, kx5Var.a(obj5, hx5Var).d, jLongValue + hx5Var.f);
                                obj = pairA2.first;
                                jLongValue2 = ((Long) pairA2.second).longValue();
                            } else {
                                jLongValue2 = jLongValue;
                                obj = obj5;
                            }
                            jLongValue = jLongValue2;
                            iA2 = -1;
                            i = -1;
                            z2 = false;
                            z3 = false;
                            z4 = true;
                        } else {
                            iA = -1;
                        }
                    }
                    z5 = false;
                    iA2 = iA;
                    z3 = z5;
                    obj = obj5;
                    i = -1;
                    z2 = false;
                    z4 = false;
                }
                obj = obj5;
                i = -1;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            if (iA2 != i) {
                kx5Var2 = kx5Var;
                Pair pairA3 = kx5Var2.a(jx5Var, hx5Var, iA2, C.TIME_UNSET);
                obj = pairA3.first;
                jLongValue3 = ((Long) pairA3.second).longValue();
                j = -9223372036854775807L;
            } else {
                kx5Var2 = kx5Var;
                jLongValue3 = jLongValue;
                j = jLongValue3;
            }
            h14 h14VarA = d14Var.a(kx5Var2, obj, jLongValue3);
            int i7 = h14VarA.e;
            r7 = (!h14Var4.a.equals(obj) || h14Var4.a() || h14VarA.a() || !(i7 == i || ((i2 = h14Var4.e) != i && i7 >= i2))) ? 0 : 1;
            hx5 hx5VarA = kx5Var2.a(obj, hx5Var);
            if (!z13 && jLongValue == j && h14Var4.a.equals(h14VarA.a)) {
                if (h14Var4.a()) {
                    if (hx5VarA.h.a(h14Var4.b).h) {
                        int i8 = h14Var4.b;
                        int i9 = h14Var4.c;
                        z5 z5VarA = hx5VarA.h.a(i8);
                        if ((z5VarA.c != -1 ? z5VarA.e[i9] : 0) != 4) {
                            int i10 = h14Var4.b;
                            int i11 = h14Var4.c;
                            z5 z5VarA2 = hx5VarA.h.a(i10);
                            z6 = (z5VarA2.c != -1 ? z5VarA2.e[i11] : 0) != 2;
                        }
                    } else {
                        if (h14VarA.a()) {
                            if (hx5VarA.h.a(h14VarA.b).h) {
                            }
                        }
                    }
                } else {
                    if (h14VarA.a()) {
                        if (hx5VarA.h.a(h14VarA.b).h) {
                        }
                    }
                }
            }
            if (r7 != 0 || z6) {
                h14VarA = h14Var4;
            }
            if (h14VarA.a()) {
                if (h14VarA.equals(h14Var4)) {
                    j3 = bw4Var.r;
                } else {
                    kx5Var2.a(h14VarA.a, hx5Var);
                    if (h14VarA.c == hx5Var.a(h14VarA.b)) {
                        j3 = hx5Var.h.c;
                    } else {
                        j2 = 0;
                    }
                }
                j2 = j3;
            } else {
                j2 = jLongValue3;
            }
            kq2Var = new kq2(h14VarA, j2, j, z2, z3, z4);
        }
        h14 h14Var5 = kq2Var.a;
        long j8 = kq2Var.c;
        boolean z14 = kq2Var.d;
        long j9 = kq2Var.b;
        boolean z15 = (this.x.b.equals(h14Var5) && j9 == this.x.r) ? false : true;
        try {
            if (kq2Var.e) {
                try {
                    z10 = true;
                    if (this.x.e != 1) {
                        try {
                            b(4);
                        } catch (Throwable th) {
                            th = th;
                            r13 = kx5Var2;
                            z8 = z10;
                            h14Var = h14Var5;
                            j4 = j9;
                            r12 = r13;
                            bw4 bw4Var2 = this.x;
                            kx5 kx5Var5 = bw4Var2.a;
                            h14 h14Var6 = bw4Var2.b;
                            if (kq2Var.f) {
                                j5 = j4;
                            } else {
                                j5 = -9223372036854775807L;
                            }
                            h14Var2 = h14Var;
                            r2 = r12;
                            a(r2, h14Var2, kx5Var5, h14Var6, j5);
                            if (!z15) {
                                bw4 bw4Var3 = this.x;
                                obj2 = bw4Var3.b.a;
                                kx5 kx5Var6 = bw4Var3.a;
                                if (z15) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                long j10 = this.x.d;
                                if (r2.a(obj2) == -1) {
                                    i3 = 4;
                                } else {
                                    i3 = 3;
                                }
                                this.x = a(h14Var2, j4, j8, j10, z9, i3);
                            } else {
                                bw4 bw4Var4 = this.x;
                                obj2 = bw4Var4.b.a;
                                kx5 kx5Var7 = bw4Var4.a;
                                if (z15) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                long j11 = this.x.d;
                                if (r2.a(obj2) == -1) {
                                    i3 = 4;
                                } else {
                                    i3 = 3;
                                }
                                this.x = a(h14Var2, j4, j8, j11, z9, i3);
                            }
                            k();
                            a(r2, this.x.a);
                            this.x = this.x.a(r2);
                            if (!r2.c()) {
                                this.K = null;
                            }
                            a(false);
                            throw th;
                        }
                    }
                    a(false, false, false, true);
                } catch (Throwable th2) {
                    th = th2;
                    z10 = true;
                }
            } else {
                z10 = true;
            }
            try {
                if (!z15) {
                    try {
                        z8 = z10;
                        try {
                            try {
                                r7 = kx5Var;
                                if (!this.s.a(kx5Var, this.L, b())) {
                                    b(false);
                                    r7 = r7;
                                }
                                h14Var = h14Var5;
                                jA = j9;
                                r8 = r7;
                                bw4 bw4Var5 = this.x;
                                kx5 kx5Var8 = bw4Var5.a;
                                h14 h14Var7 = bw4Var5.b;
                                h14Var3 = h14Var;
                                r3 = r8;
                                if (kq2Var.f) {
                                    j6 = jA;
                                } else {
                                    j6 = -9223372036854775807L;
                                }
                                a(r3, h14Var3, kx5Var8, h14Var7, j6);
                                if (!z15 || j8 != this.x.c) {
                                    bw4 bw4Var6 = this.x;
                                    obj3 = bw4Var6.b.a;
                                    kx5 kx5Var9 = bw4Var6.a;
                                    if (z15 || !z || kx5Var9.c() || kx5Var9.a(obj3, this.m).g) {
                                        z11 = false;
                                    } else {
                                        z11 = z8;
                                    }
                                    long j12 = this.x.d;
                                    if (r3.a(obj3) == -1) {
                                        i4 = 4;
                                    } else {
                                        i4 = 3;
                                    }
                                    this.x = a(h14Var3, jA, j8, j12, z11, i4);
                                }
                                k();
                                a(r3, this.x.a);
                                this.x = this.x.a(r3);
                                if (!r3.c()) {
                                    this.K = null;
                                }
                                a(false);
                            } catch (Throwable th3) {
                                th = th3;
                                r7 = kx5Var;
                                r13 = r7;
                                h14Var = h14Var5;
                                j4 = j9;
                                r12 = r13;
                                bw4 bw4Var7 = this.x;
                                kx5 kx5Var10 = bw4Var7.a;
                                h14 h14Var8 = bw4Var7.b;
                                if (kq2Var.f) {
                                    j5 = j4;
                                } else {
                                    j5 = -9223372036854775807L;
                                }
                                h14Var2 = h14Var;
                                r2 = r12;
                                a(r2, h14Var2, kx5Var10, h14Var8, j5);
                                if (!z15 || j8 != this.x.c) {
                                    bw4 bw4Var8 = this.x;
                                    obj2 = bw4Var8.b.a;
                                    kx5 kx5Var11 = bw4Var8.a;
                                    if (z15 || !z || kx5Var11.c() || kx5Var11.a(obj2, this.m).g) {
                                        z9 = false;
                                    } else {
                                        z9 = z8;
                                    }
                                    long j13 = this.x.d;
                                    if (r2.a(obj2) == -1) {
                                        i3 = 4;
                                    } else {
                                        i3 = 3;
                                    }
                                    this.x = a(h14Var2, j4, j8, j13, z9, i3);
                                }
                                k();
                                a(r2, this.x.a);
                                this.x = this.x.a(r2);
                                if (!r2.c()) {
                                    this.K = null;
                                }
                                a(false);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r7 = kx5Var;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r7 = kx5Var;
                        z8 = z10;
                    }
                } else {
                    kx5Var3 = kx5Var2;
                    z8 = z10;
                    if (!kx5Var3.c()) {
                        try {
                            r7 = kx5Var3;
                            a14 a14Var = this.s.h;
                            while (a14Var != null) {
                                try {
                                    if (a14Var.f.a.equals(h14Var5)) {
                                        c14 c14VarA = this.s.a(kx5Var3, a14Var.f);
                                        a14Var.f = c14VarA;
                                        Object obj6 = a14Var.a;
                                        if (obj6 instanceof t00) {
                                            long j14 = c14VarA.d;
                                            if (j14 == C.TIME_UNSET) {
                                                j14 = Long.MIN_VALUE;
                                            }
                                            t00 t00Var = (t00) obj6;
                                            j4 = j9;
                                            try {
                                                t00Var.f = 0L;
                                                t00Var.g = j14;
                                            } catch (Throwable th6) {
                                                th = th6;
                                                h14Var = h14Var5;
                                                r12 = kx5Var3;
                                                bw4 bw4Var9 = this.x;
                                                kx5 kx5Var12 = bw4Var9.a;
                                                h14 h14Var9 = bw4Var9.b;
                                                if (kq2Var.f) {
                                                    j5 = j4;
                                                } else {
                                                    j5 = -9223372036854775807L;
                                                }
                                                h14Var2 = h14Var;
                                                r2 = r12;
                                                a(r2, h14Var2, kx5Var12, h14Var9, j5);
                                                if (!z15) {
                                                    bw4 bw4Var10 = this.x;
                                                    obj2 = bw4Var10.b.a;
                                                    kx5 kx5Var13 = bw4Var10.a;
                                                    if (z15) {
                                                        z9 = false;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    long j15 = this.x.d;
                                                    if (r2.a(obj2) == -1) {
                                                        i3 = 4;
                                                    } else {
                                                        i3 = 3;
                                                    }
                                                    this.x = a(h14Var2, j4, j8, j15, z9, i3);
                                                } else {
                                                    bw4 bw4Var11 = this.x;
                                                    obj2 = bw4Var11.b.a;
                                                    kx5 kx5Var14 = bw4Var11.a;
                                                    if (z15) {
                                                        z9 = false;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    long j16 = this.x.d;
                                                    if (r2.a(obj2) == -1) {
                                                        i3 = 4;
                                                    } else {
                                                        i3 = 3;
                                                    }
                                                    this.x = a(h14Var2, j4, j8, j16, z9, i3);
                                                }
                                                k();
                                                a(r2, this.x.a);
                                                this.x = this.x.a(r2);
                                                if (!r2.c()) {
                                                    this.K = null;
                                                }
                                                a(false);
                                                throw th;
                                            }
                                        } else {
                                            j4 = j9;
                                        }
                                    } else {
                                        j4 = j9;
                                    }
                                    a14Var = a14Var.l;
                                    j9 = j4;
                                } catch (Throwable th7) {
                                    th = th7;
                                    j4 = j9;
                                }
                            }
                            j4 = j9;
                            try {
                                d14 d14Var2 = this.s;
                                h14Var = h14Var5;
                                try {
                                    jA = a(h14Var, j4, d14Var2.h != d14Var2.i ? z8 : false, z14);
                                    r8 = kx5Var3;
                                } catch (Throwable th8) {
                                    th = th8;
                                    j4 = j4;
                                    r12 = kx5Var3;
                                    bw4 bw4Var12 = this.x;
                                    kx5 kx5Var15 = bw4Var12.a;
                                    h14 h14Var10 = bw4Var12.b;
                                    if (kq2Var.f) {
                                        j5 = j4;
                                    } else {
                                        j5 = -9223372036854775807L;
                                    }
                                    h14Var2 = h14Var;
                                    r2 = r12;
                                    a(r2, h14Var2, kx5Var15, h14Var10, j5);
                                    if (!z15) {
                                        bw4 bw4Var13 = this.x;
                                        obj2 = bw4Var13.b.a;
                                        kx5 kx5Var16 = bw4Var13.a;
                                        if (z15) {
                                            z9 = false;
                                        } else {
                                            z9 = false;
                                        }
                                        long j17 = this.x.d;
                                        if (r2.a(obj2) == -1) {
                                            i3 = 4;
                                        } else {
                                            i3 = 3;
                                        }
                                        this.x = a(h14Var2, j4, j8, j17, z9, i3);
                                    } else {
                                        bw4 bw4Var14 = this.x;
                                        obj2 = bw4Var14.b.a;
                                        kx5 kx5Var17 = bw4Var14.a;
                                        if (z15) {
                                            z9 = false;
                                        } else {
                                            z9 = false;
                                        }
                                        long j18 = this.x.d;
                                        if (r2.a(obj2) == -1) {
                                            i3 = 4;
                                        } else {
                                            i3 = 3;
                                        }
                                        this.x = a(h14Var2, j4, j8, j18, z9, i3);
                                    }
                                    k();
                                    a(r2, this.x.a);
                                    this.x = this.x.a(r2);
                                    if (!r2.c()) {
                                        this.K = null;
                                    }
                                    a(false);
                                    throw th;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                h14Var = h14Var5;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            h14Var = h14Var5;
                            j4 = j9;
                        }
                    }
                    bw4 bw4Var15 = this.x;
                    kx5 kx5Var18 = bw4Var15.a;
                    h14 h14Var11 = bw4Var15.b;
                    h14Var3 = h14Var;
                    r3 = r8;
                    if (kq2Var.f) {
                        j6 = jA;
                    } else {
                        j6 = -9223372036854775807L;
                    }
                    a(r3, h14Var3, kx5Var18, h14Var11, j6);
                    if (!z15) {
                        bw4 bw4Var16 = this.x;
                        obj3 = bw4Var16.b.a;
                        kx5 kx5Var19 = bw4Var16.a;
                        if (z15) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        long j19 = this.x.d;
                        if (r3.a(obj3) == -1) {
                            i4 = 4;
                        } else {
                            i4 = 3;
                        }
                        this.x = a(h14Var3, jA, j8, j19, z11, i4);
                    } else {
                        bw4 bw4Var17 = this.x;
                        obj3 = bw4Var17.b.a;
                        kx5 kx5Var110 = bw4Var17.a;
                        if (z15) {
                            z11 = false;
                        } else {
                            z11 = false;
                        }
                        long j110 = this.x.d;
                        if (r3.a(obj3) == -1) {
                            i4 = 4;
                        } else {
                            i4 = 3;
                        }
                        this.x = a(h14Var3, jA, j8, j110, z11, i4);
                    }
                    k();
                    a(r3, this.x.a);
                    this.x = this.x.a(r3);
                    if (!r3.c()) {
                        this.K = null;
                    }
                    a(false);
                }
                r7 = kx5Var3;
                h14Var = h14Var5;
                jA = j9;
                r8 = r7;
                bw4 bw4Var18 = this.x;
                kx5 kx5Var111 = bw4Var18.a;
                h14 h14Var12 = bw4Var18.b;
                h14Var3 = h14Var;
                r3 = r8;
                if (kq2Var.f) {
                    j6 = jA;
                } else {
                    j6 = -9223372036854775807L;
                }
                a(r3, h14Var3, kx5Var111, h14Var12, j6);
                if (!z15) {
                    bw4 bw4Var19 = this.x;
                    obj3 = bw4Var19.b.a;
                    kx5 kx5Var112 = bw4Var19.a;
                    if (z15) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    long j111 = this.x.d;
                    if (r3.a(obj3) == -1) {
                        i4 = 4;
                    } else {
                        i4 = 3;
                    }
                    this.x = a(h14Var3, jA, j8, j111, z11, i4);
                } else {
                    bw4 bw4Var110 = this.x;
                    obj3 = bw4Var110.b.a;
                    kx5 kx5Var113 = bw4Var110.a;
                    if (z15) {
                        z11 = false;
                    } else {
                        z11 = false;
                    }
                    long j112 = this.x.d;
                    if (r3.a(obj3) == -1) {
                        i4 = 4;
                    } else {
                        i4 = 3;
                    }
                    this.x = a(h14Var3, jA, j8, j112, z11, i4);
                }
                k();
                a(r3, this.x.a);
                this.x = this.x.a(r3);
                if (!r3.c()) {
                    this.K = null;
                }
                a(false);
            } catch (Throwable th11) {
                th = th11;
            }
        } catch (Throwable th12) {
            th = th12;
            r12 = kx5Var2;
            h14Var = h14Var5;
            j4 = j9;
            z8 = true;
        }
    }

    public final void a(kx5 kx5Var, h14 h14Var, kx5 kx5Var2, h14 h14Var2, long j) {
        if (!a(kx5Var, h14Var)) {
            dw4 dw4Var = h14Var.a() ? dw4.e : this.x.n;
            if (this.o.getPlaybackParameters().equals(dw4Var)) {
                return;
            }
            this.o.a(dw4Var);
            return;
        }
        kx5Var.a(kx5Var.a(h14Var.a, this.m).d, this.l, 0L);
        jl0 jl0Var = this.u;
        j04 j04Var = this.l.l;
        int i = u56.a;
        jl0Var.getClass();
        jl0Var.c = u56.a(j04Var.b);
        jl0Var.f = u56.a(j04Var.c);
        jl0Var.g = u56.a(j04Var.d);
        float f = j04Var.e;
        if (f == -3.4028235E38f) {
            f = 0.97f;
        }
        jl0Var.j = f;
        float f2 = j04Var.f;
        if (f2 == -3.4028235E38f) {
            f2 = 1.03f;
        }
        jl0Var.i = f2;
        if (f == 1.0f && f2 == 1.0f) {
            jl0Var.c = C.TIME_UNSET;
        }
        jl0Var.a();
        if (j != C.TIME_UNSET) {
            jl0 jl0Var2 = this.u;
            jl0Var2.d = a(kx5Var, h14Var.a, j);
            jl0Var2.a();
        } else {
            if (u56.a(!kx5Var2.c() ? kx5Var2.a(kx5Var2.a(h14Var2.a, this.m).d, this.l, 0L).b : null, this.l.b)) {
                return;
            }
            jl0 jl0Var3 = this.u;
            jl0Var3.d = C.TIME_UNSET;
            jl0Var3.a();
        }
    }

    public final void a(dw4 dw4Var, float f, boolean z, boolean z2) {
        dw4 dw4Var2;
        int i;
        if (z) {
            if (z2) {
                this.y.a(1);
            }
            bw4 bw4Var = this.x;
            bw4 bw4Var2 = new bw4(bw4Var.a, bw4Var.b, bw4Var.c, bw4Var.d, bw4Var.e, bw4Var.f, bw4Var.g, bw4Var.h, bw4Var.i, bw4Var.j, bw4Var.k, bw4Var.l, bw4Var.m, dw4Var, bw4Var.p, bw4Var.q, bw4Var.r, bw4Var.o);
            dw4Var2 = dw4Var;
            this.x = bw4Var2;
        } else {
            dw4Var2 = dw4Var;
        }
        float f2 = dw4Var2.b;
        a14 a14Var = this.s.h;
        while (true) {
            i = 0;
            if (a14Var == null) {
                break;
            }
            er2[] er2VarArr = a14Var.n.c;
            int length = er2VarArr.length;
            while (i < length) {
                er2 er2Var = er2VarArr[i];
                if (er2Var != null) {
                    er2Var.a(f2);
                }
                i++;
            }
            a14Var = a14Var.l;
        }
        gs[] gsVarArr = this.b;
        int length2 = gsVarArr.length;
        while (i < length2) {
            gs gsVar = gsVarArr[i];
            if (gsVar != null) {
                gsVar.a(f, dw4Var2.b);
            }
            i++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00b9  */
    public final bw4 a(h14 h14Var, long j, long j2, long j3, boolean z, int i) {
        g06 g06Var;
        q06 q06Var;
        List list;
        g06 g06Var2;
        q06 q06Var2;
        k55 k55VarA;
        this.N = (!this.N && j == this.x.r && h14Var.equals(this.x.b)) ? false : true;
        k();
        bw4 bw4Var = this.x;
        g06 g06Var3 = bw4Var.h;
        q06 q06Var3 = bw4Var.i;
        List list2 = bw4Var.j;
        if (this.t.k) {
            a14 a14Var = this.s.h;
            if (a14Var == null) {
                g06Var2 = g06.e;
            } else {
                g06Var2 = a14Var.m;
            }
            if (a14Var == null) {
                q06Var2 = this.f;
            } else {
                q06Var2 = a14Var.n;
            }
            er2[] er2VarArr = q06Var2.c;
            ke3 ke3Var = new ke3();
            boolean z2 = false;
            for (er2 er2Var : er2VarArr) {
                if (er2Var != null) {
                    h84 h84Var = er2Var.a(0).k;
                    if (h84Var == null) {
                        ke3Var.a(new h84(new g84[0]));
                    } else {
                        ke3Var.a(h84Var);
                        z2 = true;
                    }
                }
            }
            if (z2) {
                k55VarA = ke3Var.a();
            } else {
                le3 le3Var = oe3.c;
                k55VarA = k55.f;
            }
            k55 k55Var = k55VarA;
            if (a14Var != null) {
                c14 c14Var = a14Var.f;
                long j4 = c14Var.c;
                if (j4 != j2) {
                    if (j2 != j4) {
                        c14Var = new c14(c14Var.a, c14Var.b, j2, c14Var.d, c14Var.e, c14Var.f, c14Var.g, c14Var.h, c14Var.i);
                    }
                    a14Var.f = c14Var;
                } else {
                    g06Var2 = g06Var2;
                    q06Var2 = q06Var2;
                }
            } else {
                g06Var2 = g06Var2;
                q06Var2 = q06Var2;
            }
            list = k55Var;
            g06Var = g06Var2;
            q06Var = q06Var2;
        } else {
            if (!h14Var.equals(bw4Var.b)) {
                g06Var3 = g06.e;
                q06Var3 = this.f;
                list2 = k55.f;
            }
            g06Var = g06Var3;
            q06Var = q06Var3;
            list = list2;
        }
        if (z) {
            iq2 iq2Var = this.y;
            if (!iq2Var.d || iq2Var.e == 5) {
                iq2Var.a = true;
                iq2Var.d = true;
                iq2Var.e = i;
            } else if (i != 5) {
                defpackage.mi2.b();
                return null;
            }
        }
        bw4 bw4Var2 = this.x;
        return bw4Var2.a(h14Var, j, j2, j3, a(bw4Var2.p), g06Var, q06Var, list);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    public final void a(boolean[] zArr) throws up2 {
        int i;
        my3 my3Var;
        a14 a14Var = this.s.i;
        q06 q06Var = a14Var.n;
        for (int i2 = 0; i2 < this.b.length; i2++) {
            if (!q06Var.a(i2) && this.c.remove(this.b[i2])) {
                gs gsVar = this.b[i2];
                if (gsVar.g == 0) {
                    a03 a03Var = gsVar.c;
                    a03Var.a = null;
                    a03Var.b = null;
                    gsVar.h();
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
        }
        int i3 = 0;
        while (i3 < this.b.length) {
            if (q06Var.a(i3)) {
                boolean z = zArr[i3];
                gs gsVar2 = this.b[i3];
                if (b(gsVar2)) {
                    i = i3;
                } else {
                    d14 d14Var = this.s;
                    a14 a14Var2 = d14Var.i;
                    boolean z2 = a14Var2 == d14Var.h;
                    q06 q06Var2 = a14Var2.n;
                    n65 n65Var = q06Var2.b[i3];
                    er2 er2Var = q06Var2.c[i3];
                    int length = er2Var != null ? er2Var.length() : 0;
                    vz2[] vz2VarArr = new vz2[length];
                    for (int i4 = 0; i4 < length; i4++) {
                        vz2VarArr[i4] = er2Var.a(i4);
                    }
                    boolean z3 = l() && this.x.e == 3;
                    boolean z4 = !z && z3;
                    this.J++;
                    this.c.add(gsVar2);
                    mc5 mc5Var = a14Var2.c[i3];
                    i = i3;
                    long j = this.L;
                    boolean z5 = z2;
                    long j2 = a14Var2.f.b;
                    long j3 = a14Var2.o;
                    boolean z6 = z3;
                    long j4 = j2 + j3;
                    if (gsVar2.g == 0) {
                        gsVar2.d = n65Var;
                        gsVar2.g = 1;
                        gsVar2.a(z5);
                        if (!gsVar2.l) {
                            gsVar2.h = mc5Var;
                            if (gsVar2.k == Long.MIN_VALUE) {
                                gsVar2.k = j4;
                            }
                            gsVar2.i = vz2VarArr;
                            gsVar2.j = j3;
                            gsVar2.a(vz2VarArr, j4, j3);
                            gsVar2.l = false;
                            gsVar2.k = j;
                            gsVar2.a(j, z4);
                            gsVar2.a(11, new gq2(this));
                            ml0 ml0Var = this.o;
                            ml0Var.getClass();
                            my3 my3VarB = gsVar2.b();
                            if (my3VarB != null && my3VarB != (my3Var = ml0Var.e)) {
                                if (my3Var == null) {
                                    ml0Var.e = my3VarB;
                                    ml0Var.d = gsVar2;
                                    ((sy3) my3VarB).a(ml0Var.b.f);
                                } else {
                                    throw new up2(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
                                }
                            }
                            if (!z6) {
                                continue;
                            } else if (gsVar2.g == 1) {
                                gsVar2.g = 2;
                                gsVar2.i();
                            } else {
                                defpackage.ud.g();
                                return;
                            }
                        } else {
                            defpackage.ud.g();
                            return;
                        }
                    } else {
                        defpackage.ud.g();
                        return;
                    }
                }
            } else {
                i = i3;
            }
            i3 = i + 1;
        }
        a14Var.g = true;
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, yads.ui5] */
    public final void a(boolean z) {
        long j;
        a14 a14Var = this.s.j;
        h14 h14Var = a14Var == null ? this.x.b : a14Var.f.a;
        boolean zEquals = this.x.k.equals(h14Var);
        if (!zEquals) {
            this.x = this.x.a(h14Var);
        }
        bw4 bw4Var = this.x;
        if (a14Var == null) {
            j = bw4Var.r;
        } else if (!a14Var.d) {
            j = a14Var.f.b;
        } else {
            long bufferedPositionUs = a14Var.e ? a14Var.a.getBufferedPositionUs() : Long.MIN_VALUE;
            j = bufferedPositionUs == Long.MIN_VALUE ? a14Var.f.e : bufferedPositionUs;
        }
        bw4Var.p = j;
        bw4 bw4Var2 = this.x;
        bw4Var2.q = a(bw4Var2.p);
        if ((!zEquals || z) && a14Var != null && a14Var.d) {
            a(a14Var.n);
        }
    }

    public final long a(long j) {
        a14 a14Var = this.s.j;
        if (a14Var == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.L - a14Var.o));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(q06 q06Var) {
        kl0 kl0Var = this.g;
        gs[] gsVarArr = this.b;
        er2[] er2VarArr = q06Var.c;
        int iMax = kl0Var.f;
        if (iMax == -1) {
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = 13107200;
                if (i < gsVarArr.length) {
                    if (er2VarArr[i] != null) {
                        switch (gsVarArr[i].b) {
                            case 0:
                                i3 = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
                                i2 += i3;
                                break;
                            case 1:
                                i2 += i3;
                                break;
                            case 2:
                                i3 = DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
                                i2 += i3;
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                i3 = 131072;
                                i2 += i3;
                                break;
                            default:
                                defpackage.mi2.b();
                                break;
                        }
                        return;
                    }
                    i++;
                } else {
                    iMax = Math.max(13107200, i2);
                }
            }
        }
        kl0Var.i = iMax;
        kl0Var.a.a(iMax);
    }

    public static Pair a(kx5 kx5Var, lq2 lq2Var, boolean z, int i, boolean z2, jx5 jx5Var, hx5 hx5Var) {
        kx5 kx5Var2;
        Object objA;
        kx5 kx5Var3 = lq2Var.a;
        if (kx5Var.c()) {
            return null;
        }
        if (kx5Var3.c()) {
            kx5Var2 = kx5Var3;
            kx5Var2 = kx5Var;
        }
        try {
            kx5Var2 = kx5Var3;
            Pair pairA = kx5Var2.a(jx5Var, hx5Var, lq2Var.b, lq2Var.c);
            kx5 kx5Var4 = kx5Var2;
            if (kx5Var.equals(kx5Var4)) {
                return pairA;
            }
            if (kx5Var.a(pairA.first) != -1) {
                return (kx5Var4.a(pairA.first, hx5Var).g && kx5Var4.a(hx5Var.d, jx5Var, 0L).p == kx5Var4.a(pairA.first)) ? kx5Var.a(jx5Var, hx5Var, kx5Var.a(pairA.first, hx5Var).d, lq2Var.c) : pairA;
            }
            if (z && (objA = a(jx5Var, hx5Var, i, z2, pairA.first, kx5Var4, kx5Var)) != null) {
                return kx5Var.a(jx5Var, hx5Var, kx5Var.a(objA, hx5Var).d, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static Object a(jx5 jx5Var, hx5 hx5Var, int i, boolean z, Object obj, kx5 kx5Var, kx5 kx5Var2) {
        int iA = kx5Var.a(obj);
        int iA2 = kx5Var.a();
        int i2 = 0;
        int iA3 = iA;
        int iA4 = -1;
        while (i2 < iA2 && iA4 == -1) {
            jx5 jx5Var2 = jx5Var;
            hx5 hx5Var2 = hx5Var;
            int i3 = i;
            boolean z2 = z;
            kx5 kx5Var3 = kx5Var;
            iA3 = kx5Var3.a(iA3, hx5Var2, jx5Var2, i3, z2);
            if (iA3 == -1) {
                break;
            }
            iA4 = kx5Var2.a(kx5Var3.a(iA3));
            i2++;
            kx5Var = kx5Var3;
            hx5Var = hx5Var2;
            jx5Var = jx5Var2;
            i = i3;
            z = z2;
        }
        if (iA4 == -1) {
            return null;
        }
        return kx5Var2.a(iA4);
    }
}
