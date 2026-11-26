package yads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
import yads.eq2;
import yads.iw4;

/* JADX INFO: loaded from: classes6.dex */
public final class eq2 extends fs implements kw4 {
    public final long A;
    public int B;
    public int C;
    public boolean D;
    public int E;
    public final th5 F;
    public ik5 G;
    public hw4 H;
    public t04 I;
    public AudioTrack J;
    public Surface K;
    public Surface L;
    public SurfaceHolder M;
    public bp5 N;
    public boolean O;
    public TextureView P;
    public final int Q;
    public int R;
    public int S;
    public final int T;
    public final am U;
    public float V;
    public boolean W;
    public final boolean X;
    public boolean Y;
    public yn0 Z;
    public t04 a0;
    public final q06 b;
    public bw4 b0;
    public final hw4 c;
    public int c0;
    public final m50 d = new m50();
    public long d0;
    public final Context e;
    public final eq2 f;
    public final gs[] g;
    public final p06 h;
    public final gu5 i;
    public final mq2 j;
    public final wt3 k;
    public final CopyOnWriteArraySet l;
    public final hx5 m;
    public final ArrayList n;
    public final boolean o;
    public final ge p;
    public final Looper q;
    public final vn r;
    public final du5 s;
    public final bq2 t;
    public final cq2 u;
    public final dm v;
    public final jm w;
    public final is5 x;
    public final fj6 y;
    public final wk6 z;

    static {
        nq2.a("goog.exo.exoplayer");
    }

    public eq2(wp2 wp2Var) {
        int i;
        boolean zEquals;
        try {
            sv3.c("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.18.1] [" + u56.e + "]");
            this.e = wp2Var.a.getApplicationContext();
            this.p = (ge) wp2Var.h.apply(wp2Var.b);
            this.U = wp2Var.j;
            this.Q = wp2Var.k;
            this.W = false;
            this.A = wp2Var.p;
            bq2 bq2Var = new bq2(this);
            this.t = bq2Var;
            this.u = new cq2();
            Handler handler = new Handler(wp2Var.i);
            gs[] gsVarArrA = ((zl0) wp2Var.c.get()).a(handler, bq2Var, bq2Var, bq2Var, bq2Var);
            this.g = gsVarArrA;
            if (gsVarArrA.length <= 0) {
                throw new IllegalStateException();
            }
            this.h = (p06) wp2Var.e.get();
            this.r = (vn) wp2Var.g.get();
            this.o = wp2Var.l;
            this.F = wp2Var.m;
            Looper looper = wp2Var.i;
            this.q = looper;
            du5 du5Var = wp2Var.b;
            this.s = du5Var;
            this.f = this;
            int i2 = 5;
            this.k = new wt3(new CopyOnWriteArraySet(), looper, du5Var, new defpackage.fh1(this, i2));
            this.l = new CopyOnWriteArraySet();
            this.n = new ArrayList();
            this.G = new ik5(new Random());
            this.b = new q06(new n65[gsVarArrA.length], new er2[gsVarArrA.length], m16.c, null);
            this.m = new hx5();
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28};
            for (int i3 = 0; i3 < 21; i3++) {
                sparseBooleanArray.append(iArr[i3], true);
            }
            this.h.getClass();
            sparseBooleanArray.append(29, true);
            my2 my2Var = new my2(sparseBooleanArray);
            this.c = new hw4(my2Var);
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
            for (int i4 = 0; i4 < my2Var.a.size(); i4++) {
                sparseBooleanArray2.append(my2Var.a(i4), true);
            }
            sparseBooleanArray2.append(4, true);
            sparseBooleanArray2.append(10, true);
            this.H = new hw4(new my2(sparseBooleanArray2));
            du5 du5Var2 = this.s;
            Looper looper2 = this.q;
            du5Var2.getClass();
            this.i = new gu5(new Handler(looper2, null));
            defpackage.x52 x52Var = new defpackage.x52(this, i2);
            q06 q06Var = this.b;
            gx5 gx5Var = kx5.b;
            h14 h14Var = bw4.s;
            this.b0 = new bw4(gx5Var, h14Var, C.TIME_UNSET, 0L, 1, null, false, g06.e, q06Var, k55.f, h14Var, false, 0, dw4.e, 0L, 0L, 0L, false);
            ((cj0) this.p).a(this.f, this.q);
            int i5 = u56.a;
            this.j = new mq2(this.g, this.h, this.b, (kl0) wp2Var.f.get(), this.r, this.p, this.F, wp2Var.n, wp2Var.o, this.q, this.s, x52Var, i5 < 31 ? new rw4() : aq2.a(this.e, this, wp2Var.q));
            this.V = 1.0f;
            t04 t04Var = t04.H;
            this.I = t04Var;
            this.a0 = t04Var;
            this.c0 = -1;
            if (i5 < 21) {
                AudioTrack audioTrack = this.J;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.J.release();
                    this.J = null;
                }
                AudioTrack audioTrack2 = this.J;
                if (audioTrack2 == null) {
                    AudioTrack audioTrack3 = new AudioTrack(3, MapTrimmers.DEFAULT_VALUE_MAX_LENGTH, 4, 2, 2, 0, 0);
                    this.J = audioTrack3;
                    audioTrack2 = audioTrack3;
                }
                this.T = audioTrack2.getAudioSessionId();
            } else {
                this.T = u56.a(this.e);
            }
            int i6 = ub0.b;
            this.X = true;
            ge geVar = this.p;
            geVar.getClass();
            wt3 wt3Var = this.k;
            if (!wt3Var.g) {
                wt3Var.d.add(new vt3(geVar));
            }
            vn vnVar = this.r;
            Handler handler2 = new Handler(this.q);
            ge geVar2 = this.p;
            zj0 zj0Var = (zj0) vnVar;
            zj0Var.getClass();
            geVar2.getClass();
            tn tnVar = zj0Var.b;
            tnVar.getClass();
            for (sn snVar : tnVar.a) {
                if (snVar.b == geVar2) {
                    snVar.c = true;
                    tnVar.a.remove(snVar);
                }
            }
            tnVar.a.add(new sn(handler2, geVar2));
            this.l.add(this.t);
            dm dmVar = new dm(wp2Var.a, handler, this.t);
            this.v = dmVar;
            if (dmVar.c) {
                dmVar.a.unregisterReceiver(dmVar.b);
                dmVar.c = false;
            }
            jm jmVar = new jm(wp2Var.a, handler, this.t);
            this.w = jmVar;
            if (!u56.a((Object) null, (Object) null)) {
                jmVar.e = 0;
            }
            is5 is5Var = new is5(wp2Var.a, handler, this.t);
            this.x = is5Var;
            int i7 = this.U.d;
            if (i7 != 13) {
                switch (i7) {
                    case 2:
                        i = 0;
                        break;
                    case 3:
                        i = 8;
                        break;
                    case 4:
                        i = 4;
                        break;
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i = 5;
                        break;
                    case 6:
                        i = 2;
                        break;
                    default:
                        i = 3;
                        break;
                }
            } else {
                i = 1;
            }
            if (is5Var.g != i) {
                is5Var.g = i;
                is5Var.c();
                ((bq2) is5Var.c).a();
            }
            this.y = new fj6(wp2Var.a);
            this.z = new wk6(wp2Var.a);
            this.Z = new yn0(0, is5Var.a(), is5Var.d.getStreamMaxVolume(is5Var.g));
            p06 p06Var = this.h;
            am amVar = this.U;
            um0 um0Var = (um0) p06Var;
            synchronized (um0Var.c) {
                zEquals = um0Var.h.equals(amVar);
                um0Var.h = amVar;
            }
            if (!zEquals) {
                um0Var.b();
            }
            a(1, 10, Integer.valueOf(this.T));
            a(2, 10, Integer.valueOf(this.T));
            a(1, 3, this.U);
            a(2, 4, Integer.valueOf(this.Q));
            a(2, 5, (Object) 0);
            a(1, 9, Boolean.valueOf(this.W));
            a(2, 7, this.u);
            a(6, 8, this.u);
            this.d.d();
        } catch (Throwable th) {
            this.d.d();
            throw th;
        }
    }

    public final void a(final bw4 bw4Var, final int i, int i2, boolean z, final int i3, long j) {
        int i4;
        Pair pair;
        int i5;
        final p04 p04Var;
        int i6;
        int i7;
        Object obj;
        int i8;
        p04 p04Var2;
        Object obj2;
        int i9;
        long j2;
        long j3;
        long jB;
        long jB2;
        Object obj3;
        p04 p04Var3;
        Object obj4;
        int iA;
        bw4 bw4Var2 = this.b0;
        this.b0 = bw4Var;
        boolean zEquals = bw4Var2.a.equals(bw4Var.a);
        kx5 kx5Var = bw4Var2.a;
        kx5 kx5Var2 = bw4Var.a;
        if (kx5Var2.c() && kx5Var.c()) {
            pair = new Pair(Boolean.FALSE, -1);
            i4 = 3;
        } else {
            i4 = 3;
            if (kx5Var2.c() != kx5Var.c()) {
                pair = new Pair(Boolean.TRUE, 3);
            } else if (kx5Var.a(kx5Var.a(bw4Var2.b.a, this.m).d, this.a, 0L).b.equals(kx5Var2.a(kx5Var2.a(bw4Var.b.a, this.m).d, this.a, 0L).b)) {
                pair = (z && i3 == 0 && bw4Var2.b.d < bw4Var.b.d) ? new Pair(Boolean.TRUE, 0) : new Pair(Boolean.FALSE, -1);
            } else {
                if (z && i3 == 0) {
                    i5 = 1;
                } else if (z && i3 == 1) {
                    i5 = 2;
                } else {
                    if (zEquals) {
                        defpackage.ud.g();
                        return;
                    }
                    i5 = 3;
                }
                pair = new Pair(Boolean.TRUE, Integer.valueOf(i5));
            }
        }
        boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
        final int iIntValue = ((Integer) pair.second).intValue();
        t04 t04VarC = this.I;
        if (zBooleanValue) {
            p04Var = bw4Var.a.c() ? null : bw4Var.a.a(bw4Var.a.a(bw4Var.b.a, this.m).d, this.a, 0L).d;
            this.a0 = t04.H;
        } else {
            p04Var = null;
        }
        if (zBooleanValue || !bw4Var2.j.equals(bw4Var.j)) {
            t04 t04Var = this.a0;
            t04Var.getClass();
            s04 s04Var = new s04(t04Var);
            List list = bw4Var.j;
            for (int i10 = 0; i10 < list.size(); i10++) {
                h84 h84Var = (h84) list.get(i10);
                int i11 = 0;
                while (true) {
                    g84[] g84VarArr = h84Var.b;
                    if (i11 < g84VarArr.length) {
                        g84VarArr[i11].a(s04Var);
                        i11++;
                    }
                }
            }
            this.a0 = new t04(s04Var);
            t04VarC = c();
        }
        boolean zEquals2 = t04VarC.equals(this.I);
        this.I = t04VarC;
        boolean z2 = bw4Var2.l != bw4Var.l;
        boolean z3 = bw4Var2.e != bw4Var.e;
        if (z3 || z2) {
            p();
        }
        boolean z4 = bw4Var2.g != bw4Var.g;
        if (!bw4Var2.a.equals(bw4Var.a)) {
            this.k.a(0, new tt3() { // from class: qu9
                @Override // yads.tt3
                public final void invoke(Object obj5) {
                    eq2.a(bw4Var, i, (iw4) obj5);
                }
            });
        }
        if (z) {
            hx5 hx5Var = new hx5();
            if (bw4Var2.a.c()) {
                obj = null;
                i8 = -1;
                p04Var2 = null;
                obj2 = null;
                i9 = -1;
            } else {
                Object obj5 = bw4Var2.b.a;
                bw4Var2.a.a(obj5, hx5Var);
                int i12 = hx5Var.d;
                int iA2 = bw4Var2.a.a(obj5);
                obj = bw4Var2.a.a(i12, this.a, 0L).b;
                p04Var2 = this.a.d;
                obj2 = obj5;
                i8 = i12;
                i9 = iA2;
            }
            h14 h14Var = bw4Var2.b;
            if (i3 == 0) {
                boolean zA = h14Var.a();
                h14 h14Var2 = bw4Var2.b;
                if (zA) {
                    jB = hx5Var.a(h14Var2.b, h14Var2.c);
                    jB2 = b(bw4Var2);
                } else {
                    if (h14Var2.e != -1) {
                        jB = b(this.b0);
                    } else {
                        j2 = hx5Var.f;
                        j3 = hx5Var.e;
                        jB = j2 + j3;
                    }
                    jB2 = jB;
                }
            } else if (h14Var.a()) {
                jB = bw4Var2.r;
                jB2 = b(bw4Var2);
            } else {
                j2 = hx5Var.f;
                j3 = bw4Var2.r;
                jB = j2 + j3;
                jB2 = jB;
            }
            long jB3 = u56.b(jB);
            long jB4 = u56.b(jB2);
            h14 h14Var3 = bw4Var2.b;
            final jw4 jw4Var = new jw4(obj, i8, p04Var2, obj2, i9, jB3, jB4, h14Var3.b, h14Var3.c);
            int iG = g();
            if (this.b0.a.c()) {
                obj3 = null;
                p04Var3 = null;
                obj4 = null;
                iA = -1;
            } else {
                bw4 bw4Var3 = this.b0;
                Object obj6 = bw4Var3.b.a;
                bw4Var3.a.a(obj6, this.m);
                iA = this.b0.a.a(obj6);
                obj4 = obj6;
                obj3 = this.b0.a.a(iG, this.a, 0L).b;
                p04Var3 = this.a.d;
            }
            long jB5 = u56.b(j);
            long jB6 = this.b0.b.a() ? u56.b(b(this.b0)) : jB5;
            h14 h14Var4 = this.b0.b;
            final jw4 jw4Var2 = new jw4(obj3, iG, p04Var3, obj4, iA, jB5, jB6, h14Var4.b, h14Var4.c);
            this.k.a(11, new tt3() { // from class: tu9
                @Override // yads.tt3
                public final void invoke(Object obj7) {
                    eq2.a(i3, jw4Var, jw4Var2, (iw4) obj7);
                }
            });
        } else {
            zEquals2 = zEquals2;
            z3 = z3;
            z4 = z4;
        }
        if (zBooleanValue) {
            this.k.a(1, new tt3() { // from class: uu9
                @Override // yads.tt3
                public final void invoke(Object obj7) {
                    ((iw4) obj7).a(p04Var, iIntValue);
                }
            });
        }
        int i13 = 5;
        int i14 = 6;
        if (bw4Var2.f != bw4Var.f) {
            this.k.a(10, new defpackage.f90(bw4Var, i14));
            if (bw4Var.f != null) {
                this.k.a(10, new defpackage.a9(bw4Var, i13));
            }
        }
        q06 q06Var = bw4Var2.i;
        q06 q06Var2 = bw4Var.i;
        if (q06Var != q06Var2) {
            p06 p06Var = this.h;
            sw3 sw3Var = q06Var2.e;
            ((tw3) p06Var).getClass();
            this.k.a(2, new defpackage.b9(bw4Var, 8));
        }
        if (zEquals2) {
            i6 = i4;
        } else {
            i6 = i4;
            this.k.a(14, new defpackage.ah1(this.I, i6));
        }
        int i15 = 4;
        if (z4) {
            this.k.a(i6, new defpackage.bh1(bw4Var, i15));
        }
        if (z3 || z2) {
            this.k.a(-1, new defpackage.ch1(bw4Var, i6));
        }
        if (z3) {
            this.k.a(4, new defpackage.dh1(bw4Var, i15));
        }
        if (z2) {
            i7 = 1;
            this.k.a(5, new defpackage.cg2(bw4Var, i2, i7));
        } else {
            i7 = 1;
        }
        if (bw4Var2.m != bw4Var.m) {
            this.k.a(6, new defpackage.ow0(bw4Var, i13));
        }
        if (((bw4Var2.e == 3 && bw4Var2.l && bw4Var2.m == 0) ? i7 : 0) != ((bw4Var.e == 3 && bw4Var.l && bw4Var.m == 0) ? i7 : 0)) {
            this.k.a(7, new defpackage.fg2(bw4Var, i14));
        }
        if (!bw4Var2.n.equals(bw4Var.n)) {
            this.k.a(12, new defpackage.zi4(bw4Var, i15));
        }
        o();
        this.k.a();
        if (bw4Var2.o != bw4Var.o) {
            Iterator it = this.l.iterator();
            while (it.hasNext()) {
                ((bq2) ((vp2) it.next())).a.p();
            }
        }
    }

    public final void b(int i) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            this.n.remove(i2);
        }
        ik5 ik5Var = this.G;
        int[] iArr = new int[ik5Var.b.length - i];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr2 = ik5Var.b;
            if (i3 >= iArr2.length) {
                this.G = new ik5(iArr, new Random(ik5Var.a.nextLong()));
                return;
            }
            int i5 = iArr2[i3];
            if (i5 < 0 || i5 >= i) {
                int i6 = i3 - i4;
                if (i5 >= 0) {
                    i5 -= i;
                }
                iArr[i6] = i5;
            } else {
                i4++;
            }
            i3++;
        }
    }

    public final t04 c() {
        q();
        kx5 kx5Var = this.b0.a;
        if (kx5Var.c()) {
            return this.a0;
        }
        p04 p04Var = kx5Var.a(g(), this.a, 0L).d;
        t04 t04Var = this.a0;
        t04Var.getClass();
        s04 s04Var = new s04(t04Var);
        t04 t04Var2 = p04Var.e;
        if (t04Var2 != null) {
            CharSequence charSequence = t04Var2.b;
            if (charSequence != null) {
                s04Var.a = charSequence;
            }
            CharSequence charSequence2 = t04Var2.c;
            if (charSequence2 != null) {
                s04Var.b = charSequence2;
            }
            CharSequence charSequence3 = t04Var2.d;
            if (charSequence3 != null) {
                s04Var.c = charSequence3;
            }
            CharSequence charSequence4 = t04Var2.e;
            if (charSequence4 != null) {
                s04Var.d = charSequence4;
            }
            CharSequence charSequence5 = t04Var2.f;
            if (charSequence5 != null) {
                s04Var.e = charSequence5;
            }
            CharSequence charSequence6 = t04Var2.g;
            if (charSequence6 != null) {
                s04Var.f = charSequence6;
            }
            CharSequence charSequence7 = t04Var2.h;
            if (charSequence7 != null) {
                s04Var.g = charSequence7;
            }
            z35 z35Var = t04Var2.i;
            if (z35Var != null) {
                s04Var.h = z35Var;
            }
            z35 z35Var2 = t04Var2.j;
            if (z35Var2 != null) {
                s04Var.i = z35Var2;
            }
            byte[] bArr = t04Var2.k;
            if (bArr != null) {
                Integer num = t04Var2.l;
                s04Var.j = (byte[]) bArr.clone();
                s04Var.k = num;
            }
            Uri uri = t04Var2.m;
            if (uri != null) {
                s04Var.l = uri;
            }
            Integer num2 = t04Var2.n;
            if (num2 != null) {
                s04Var.m = num2;
            }
            Integer num3 = t04Var2.o;
            if (num3 != null) {
                s04Var.n = num3;
            }
            Integer num4 = t04Var2.p;
            if (num4 != null) {
                s04Var.o = num4;
            }
            Boolean bool = t04Var2.q;
            if (bool != null) {
                s04Var.p = bool;
            }
            Integer num5 = t04Var2.r;
            if (num5 != null) {
                s04Var.q = num5;
            }
            Integer num6 = t04Var2.s;
            if (num6 != null) {
                s04Var.q = num6;
            }
            Integer num7 = t04Var2.t;
            if (num7 != null) {
                s04Var.r = num7;
            }
            Integer num8 = t04Var2.u;
            if (num8 != null) {
                s04Var.s = num8;
            }
            Integer num9 = t04Var2.v;
            if (num9 != null) {
                s04Var.t = num9;
            }
            Integer num10 = t04Var2.w;
            if (num10 != null) {
                s04Var.u = num10;
            }
            Integer num11 = t04Var2.x;
            if (num11 != null) {
                s04Var.v = num11;
            }
            CharSequence charSequence8 = t04Var2.y;
            if (charSequence8 != null) {
                s04Var.w = charSequence8;
            }
            CharSequence charSequence9 = t04Var2.z;
            if (charSequence9 != null) {
                s04Var.x = charSequence9;
            }
            CharSequence charSequence10 = t04Var2.A;
            if (charSequence10 != null) {
                s04Var.y = charSequence10;
            }
            Integer num12 = t04Var2.B;
            if (num12 != null) {
                s04Var.z = num12;
            }
            Integer num13 = t04Var2.C;
            if (num13 != null) {
                s04Var.A = num13;
            }
            CharSequence charSequence11 = t04Var2.D;
            if (charSequence11 != null) {
                s04Var.B = charSequence11;
            }
            CharSequence charSequence12 = t04Var2.E;
            if (charSequence12 != null) {
                s04Var.C = charSequence12;
            }
            CharSequence charSequence13 = t04Var2.F;
            if (charSequence13 != null) {
                s04Var.D = charSequence13;
            }
            Bundle bundle = t04Var2.G;
            if (bundle != null) {
                s04Var.E = bundle;
            }
        }
        return new t04(s04Var);
    }

    public final long d() {
        q();
        q();
        if (!this.b0.b.a()) {
            q();
            return u56.b(a(this.b0));
        }
        bw4 bw4Var = this.b0;
        bw4Var.a.a(bw4Var.b.a, this.m);
        bw4 bw4Var2 = this.b0;
        if (bw4Var2.c == C.TIME_UNSET) {
            return u56.b(bw4Var2.a.a(g(), this.a, 0L).n);
        }
        return u56.b(this.b0.c) + u56.b(this.m.f);
    }

    public final int e() {
        q();
        q();
        if (this.b0.b.a()) {
            return this.b0.b.b;
        }
        return -1;
    }

    public final int f() {
        q();
        q();
        if (this.b0.b.a()) {
            return this.b0.b.c;
        }
        return -1;
    }

    public final int g() {
        q();
        int iH = h();
        if (iH == -1) {
            return 0;
        }
        return iH;
    }

    public final int h() {
        if (this.b0.a.c()) {
            return this.c0;
        }
        bw4 bw4Var = this.b0;
        return bw4Var.a.a(bw4Var.b.a, this.m).d;
    }

    public final long i() {
        q();
        q();
        if (!this.b0.b.a()) {
            q();
            kx5 kx5Var = this.b0.a;
            return kx5Var.c() ? C.TIME_UNSET : u56.b(kx5Var.a(g(), this.a, 0L).o);
        }
        bw4 bw4Var = this.b0;
        h14 h14Var = bw4Var.b;
        bw4Var.a.a(h14Var.a, this.m);
        return u56.b(this.m.a(h14Var.b, h14Var.c));
    }

    public final boolean j() {
        q();
        return this.b0.b.a();
    }

    public final void k() {
        q();
        q();
        boolean z = this.b0.l;
        int iA = this.w.a(2, z);
        a(iA, (!z || iA == 1) ? 1 : 2, z);
        bw4 bw4Var = this.b0;
        if (bw4Var.e != 1) {
            return;
        }
        bw4 bw4VarA = bw4Var.a((up2) null);
        bw4 bw4VarA2 = bw4VarA.a(bw4VarA.a.c() ? 4 : 2);
        this.B++;
        gu5 gu5Var = this.j.i;
        gu5Var.getClass();
        fu5 fu5VarA = gu5.a();
        fu5VarA.a = gu5Var.a.obtainMessage(0);
        fu5VarA.b();
        a(bw4VarA2, 1, 1, false, 5, C.TIME_UNSET);
    }

    public final void l() {
        String str;
        AudioTrack audioTrack;
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [ExoPlayerLib/2.18.1] [");
        sb.append(u56.e);
        sb.append("] [");
        synchronized (nq2.class) {
            str = nq2.b;
        }
        sb.append(str);
        sb.append("]");
        sv3.c("ExoPlayerImpl", sb.toString());
        q();
        if (u56.a < 21 && (audioTrack = this.J) != null) {
            audioTrack.release();
            this.J = null;
        }
        dm dmVar = this.v;
        if (dmVar.c) {
            dmVar.a.unregisterReceiver(dmVar.b);
            dmVar.c = false;
        }
        this.x.b();
        this.y.getClass();
        this.z.getClass();
        jm jmVar = this.w;
        jmVar.c = null;
        jmVar.a();
        if (!this.j.h()) {
            wt3 wt3Var = this.k;
            wt3Var.a(10, new defpackage.g2(6));
            wt3Var.a();
        }
        wt3 wt3Var2 = this.k;
        for (vt3 vt3Var : wt3Var2.d) {
            ut3 ut3Var = wt3Var2.c;
            vt3Var.d = true;
            if (vt3Var.c) {
                ut3Var.a(vt3Var.a, vt3Var.b.a());
            }
        }
        wt3Var2.d.clear();
        wt3Var2.g = true;
        this.i.a.removeCallbacksAndMessages(null);
        vn vnVar = this.r;
        ge geVar = this.p;
        tn tnVar = ((zj0) vnVar).b;
        for (sn snVar : tnVar.a) {
            if (snVar.b == geVar) {
                snVar.c = true;
                tnVar.a.remove(snVar);
            }
        }
        bw4 bw4VarA = this.b0.a(1);
        this.b0 = bw4VarA;
        bw4 bw4VarA2 = bw4VarA.a(bw4VarA.b);
        this.b0 = bw4VarA2;
        bw4VarA2.p = bw4VarA2.r;
        this.b0.q = 0L;
        ((cj0) this.p).c();
        this.h.a();
        m();
        Surface surface = this.L;
        if (surface != null) {
            surface.release();
            this.L = null;
        }
        int i = ub0.b;
    }

    public final void m() {
        if (this.N != null) {
            uw4 uw4VarA = a(this.u);
            boolean z = uw4VarA.g;
            if (z) {
                defpackage.ud.g();
                return;
            }
            uw4VarA.d = 10000;
            if (z) {
                defpackage.ud.g();
                return;
            }
            uw4VarA.e = null;
            uw4VarA.a();
            bp5 bp5Var = this.N;
            bp5Var.a.remove(this.t);
            this.N = null;
        }
        TextureView textureView = this.P;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.t) {
                sv3.d("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.P.setSurfaceTextureListener(null);
            }
            this.P = null;
        }
        SurfaceHolder surfaceHolder = this.M;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.t);
            this.M = null;
        }
    }

    public final void n() {
        q();
        q();
        jm jmVar = this.w;
        q();
        jmVar.a(1, this.b0.l);
        a((up2) null);
        int i = ub0.b;
    }

    public final void o() {
        int iA;
        int iA2;
        hw4 hw4Var = this.H;
        eq2 eq2Var = this.f;
        hw4 hw4Var2 = this.c;
        int i = u56.a;
        eq2Var.q();
        boolean zA = eq2Var.b0.b.a();
        eq2Var.q();
        kx5 kx5Var = eq2Var.b0.a;
        boolean z = !kx5Var.c() && kx5Var.a(eq2Var.g(), eq2Var.a, 0L).i;
        eq2Var.q();
        kx5 kx5Var2 = eq2Var.b0.a;
        if (kx5Var2.c()) {
            iA = -1;
        } else {
            int iG = eq2Var.g();
            eq2Var.q();
            eq2Var.q();
            iA = kx5Var2.a(iG, 0);
        }
        boolean z2 = iA != -1;
        eq2Var.q();
        kx5 kx5Var3 = eq2Var.b0.a;
        if (kx5Var3.c()) {
            iA2 = -1;
        } else {
            int iG2 = eq2Var.g();
            eq2Var.q();
            eq2Var.q();
            iA2 = kx5Var3.a(iG2, 0, false);
        }
        boolean z3 = iA2 != -1;
        eq2Var.q();
        kx5 kx5Var4 = eq2Var.b0.a;
        boolean z4 = !kx5Var4.c() && kx5Var4.a(eq2Var.g(), eq2Var.a, 0L).a();
        eq2Var.q();
        kx5 kx5Var5 = eq2Var.b0.a;
        boolean z5 = !kx5Var5.c() && kx5Var5.a(eq2Var.g(), eq2Var.a, 0L).j;
        eq2Var.q();
        boolean zC = eq2Var.b0.a.c();
        gw4 gw4Var = new gw4();
        ly2 ly2Var = gw4Var.a;
        my2 my2Var = hw4Var2.b;
        ly2Var.getClass();
        for (int i2 = 0; i2 < my2Var.a.size(); i2++) {
            ly2Var.a(my2Var.a(i2));
        }
        boolean z6 = !zA;
        int i3 = 5;
        hw4 hw4Var3 = new hw4(gw4Var.a(4, z6).a(5, z && !zA).a(6, z2 && !zA).a(7, !zC && (z2 || !z4 || z) && !zA).a(8, z3 && !zA).a(9, !zC && (z3 || (z4 && z5)) && !zA).a(10, z6).a(11, z && !zA).a(12, z && !zA).a.a());
        this.H = hw4Var3;
        if (hw4Var3.equals(hw4Var)) {
            return;
        }
        this.k.a(13, new defpackage.v52(this, i3));
    }

    public final void p() {
        q();
        int i = this.b0.e;
        if (i != 1) {
            if (i == 2 || i == 3) {
                q();
                boolean z = this.b0.o;
                fj6 fj6Var = this.y;
                q();
                boolean z2 = this.b0.l;
                fj6Var.getClass();
                wk6 wk6Var = this.z;
                q();
                boolean z3 = this.b0.l;
                wk6Var.getClass();
                return;
            }
            if (i != 4) {
                defpackage.ud.g();
                return;
            }
        }
        this.y.getClass();
        this.z.getClass();
    }

    public final void q() {
        this.d.b();
        if (Thread.currentThread() != this.q.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = this.q.getThread().getName();
            int i = u56.a;
            Locale locale = Locale.US;
            String strD = defpackage.n2.d("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread");
            if (this.X) {
                defpackage.ah.f(strD);
            } else {
                sv3.d("ExoPlayerImpl", sv3.a(strD, this.Y ? null : new IllegalStateException()));
                this.Y = true;
            }
        }
    }

    public static void h(bw4 bw4Var, iw4 iw4Var) {
        iw4Var.onIsPlayingChanged(bw4Var.e == 3 && bw4Var.l && bw4Var.m == 0);
    }

    public static long b(bw4 bw4Var) {
        jx5 jx5Var = new jx5();
        hx5 hx5Var = new hx5();
        bw4Var.a.a(bw4Var.b.a, hx5Var);
        long j = bw4Var.c;
        if (j == C.TIME_UNSET) {
            return bw4Var.a.a(hx5Var.d, jx5Var, 0L).n;
        }
        return hx5Var.f + j;
    }

    public final /* synthetic */ void b(iw4 iw4Var) {
        iw4Var.a(this.H);
    }

    public final void b(iq2 iq2Var) {
        gu5 gu5Var = this.i;
        gu5Var.a.post(new defpackage.zs2(3, this, iq2Var));
    }

    public static /* synthetic */ void d(bw4 bw4Var, iw4 iw4Var) {
        boolean z = bw4Var.g;
        iw4Var.getClass();
        iw4Var.onIsLoadingChanged(bw4Var.g);
    }

    public final void c(iw4 iw4Var) {
        iw4Var.getClass();
        wt3 wt3Var = this.k;
        for (vt3 vt3Var : wt3Var.d) {
            if (vt3Var.a.equals(iw4Var)) {
                ut3 ut3Var = wt3Var.c;
                vt3Var.d = true;
                if (vt3Var.c) {
                    ut3Var.a(vt3Var.a, vt3Var.b.a());
                }
                wt3Var.d.remove(vt3Var);
            }
        }
    }

    public final void a(cs csVar) {
        q();
        List listSingletonList = Collections.singletonList(csVar);
        q();
        q();
        h();
        q();
        a(this.b0);
        int i = u56.a;
        this.B++;
        if (!this.n.isEmpty()) {
            b(this.n.size());
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < listSingletonList.size(); i2++) {
            p14 p14Var = new p14((cs) listSingletonList.get(i2), this.o);
            arrayList.add(p14Var);
            this.n.add(i2, new dq2(p14Var.b, p14Var.a.o));
        }
        this.G = this.G.a(arrayList.size());
        hx4 hx4Var = new hx4(this.n, this.G);
        if (!hx4Var.c() && -1 >= hx4Var.e) {
            throw new vb3();
        }
        int iA = hx4Var.a(false);
        bw4 bw4VarA = a(this.b0, hx4Var, a(hx4Var, iA, C.TIME_UNSET));
        int i3 = bw4VarA.e;
        if (iA != -1 && i3 != 1) {
            i3 = (hx4Var.c() || iA >= hx4Var.e) ? 4 : 2;
        }
        bw4 bw4VarA2 = bw4VarA.a(i3);
        this.j.i.a(17, new hq2(arrayList, this.G, iA, u56.a(C.TIME_UNSET))).b();
        a(bw4VarA2, 0, 1, (this.b0.b.a.equals(bw4VarA2.b.a) || this.b0.a.c()) ? false : true, 4, a(bw4VarA2));
    }

    public final void a(boolean z) {
        q();
        jm jmVar = this.w;
        q();
        int iA = jmVar.a(this.b0.e, z);
        int i = 1;
        if (z && iA != 1) {
            i = 2;
        }
        a(iA, i, z);
    }

    public static void a(iw4 iw4Var) {
        iw4Var.b(new up2(2, new cr2(1), 1003));
    }

    public final void a(TextureView textureView) {
        q();
        if (textureView == null) {
            q();
            m();
            a((Surface) null);
            a(0, 0);
            return;
        }
        m();
        this.P = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            sv3.d("ExoPlayerImpl", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.t);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            a((Surface) null);
            a(0, 0);
        } else {
            Surface surface = new Surface(surfaceTexture);
            a(surface);
            this.L = surface;
            a(textureView.getWidth(), textureView.getHeight());
        }
    }

    public final void a(float f) {
        q();
        int i = u56.a;
        final float fMax = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.V == fMax) {
            return;
        }
        this.V = fMax;
        a(1, 2, Float.valueOf(this.w.f * fMax));
        wt3 wt3Var = this.k;
        wt3Var.a(22, new tt3() { // from class: su9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                ((iw4) obj).onVolumeChanged(fMax);
            }
        });
        wt3Var.a();
    }

    public final void a(up2 up2Var) {
        bw4 bw4Var = this.b0;
        bw4 bw4VarA = bw4Var.a(bw4Var.b);
        bw4VarA.p = bw4VarA.r;
        bw4VarA.q = 0L;
        bw4 bw4VarA2 = bw4VarA.a(1);
        if (up2Var != null) {
            bw4VarA2 = bw4VarA2.a(up2Var);
        }
        bw4 bw4Var2 = bw4VarA2;
        this.B++;
        gu5 gu5Var = this.j.i;
        gu5Var.getClass();
        fu5 fu5VarA = gu5.a();
        fu5VarA.a = gu5Var.a.obtainMessage(6);
        fu5VarA.b();
        a(bw4Var2, 0, 1, bw4Var2.a.c() && !this.b0.a.c(), 4, a(bw4Var2));
    }

    public final long a(bw4 bw4Var) {
        if (bw4Var.a.c()) {
            return u56.a(this.d0);
        }
        if (bw4Var.b.a()) {
            return bw4Var.r;
        }
        kx5 kx5Var = bw4Var.a;
        h14 h14Var = bw4Var.b;
        long j = bw4Var.r;
        kx5Var.a(h14Var.a, this.m);
        return j + this.m.f;
    }

    public final void a(iq2 iq2Var) {
        boolean z;
        int i = this.B - iq2Var.c;
        this.B = i;
        boolean z2 = true;
        if (iq2Var.d) {
            this.C = iq2Var.e;
            this.D = true;
        }
        if (iq2Var.f) {
            this.E = iq2Var.g;
        }
        if (i == 0) {
            kx5 kx5Var = iq2Var.b.a;
            if (!this.b0.a.c() && kx5Var.c()) {
                this.c0 = -1;
                this.d0 = 0L;
            }
            if (!kx5Var.c()) {
                List listAsList = Arrays.asList(((hx4) kx5Var).i);
                if (listAsList.size() == this.n.size()) {
                    for (int i2 = 0; i2 < listAsList.size(); i2++) {
                        ((dq2) this.n.get(i2)).b = (kx5) listAsList.get(i2);
                    }
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
            boolean z3 = this.D;
            long j = C.TIME_UNSET;
            if (z3) {
                if (iq2Var.b.b.equals(this.b0.b) && iq2Var.b.d == this.b0.r) {
                    z2 = false;
                }
                if (z2) {
                    if (!kx5Var.c() && !iq2Var.b.b.a()) {
                        bw4 bw4Var = iq2Var.b;
                        h14 h14Var = bw4Var.b;
                        long j2 = bw4Var.d;
                        kx5Var.a(h14Var.a, this.m);
                        j = j2 + this.m.f;
                    } else {
                        j = iq2Var.b.d;
                    }
                }
                z = z2;
            } else {
                z = false;
            }
            long j3 = j;
            this.D = false;
            a(iq2Var.b, 1, this.E, z, this.C, j3);
        }
    }

    public final /* synthetic */ void a(iw4 iw4Var, my2 my2Var) {
        iw4Var.getClass();
    }

    public static /* synthetic */ void a(bw4 bw4Var, int i, iw4 iw4Var) {
        kx5 kx5Var = bw4Var.a;
        iw4Var.a(i);
    }

    public static /* synthetic */ void a(int i, jw4 jw4Var, jw4 jw4Var2, iw4 iw4Var) {
        iw4Var.getClass();
        iw4Var.a(jw4Var, jw4Var2, i);
    }

    public final bw4 a(bw4 bw4Var, hx4 hx4Var, Pair pair) {
        List list;
        long jA;
        if (!hx4Var.c() && pair == null) {
            defpackage.mi2.b();
            return null;
        }
        kx5 kx5Var = bw4Var.a;
        bw4 bw4VarA = bw4Var.a(hx4Var);
        if (hx4Var.c()) {
            h14 h14Var = bw4.s;
            long jA2 = u56.a(this.d0);
            bw4 bw4VarA2 = bw4VarA.a(h14Var, jA2, jA2, jA2, 0L, g06.e, this.b, k55.f).a(h14Var);
            bw4VarA2.p = bw4VarA2.r;
            return bw4VarA2;
        }
        Object obj = bw4VarA.b.a;
        int i = u56.a;
        boolean zEquals = obj.equals(pair.first);
        h14 h14Var2 = !zEquals ? new h14(pair.first) : bw4VarA.b;
        long jLongValue = ((Long) pair.second).longValue();
        long jA3 = u56.a(d());
        if (!kx5Var.c()) {
            jA3 -= kx5Var.a(obj, this.m).f;
        }
        if (!zEquals || jLongValue < jA3) {
            h14 h14Var3 = h14Var2;
            if (!h14Var3.a()) {
                g06 g06Var = !zEquals ? g06.e : bw4VarA.h;
                q06 q06Var = !zEquals ? this.b : bw4VarA.i;
                if (!zEquals) {
                    le3 le3Var = oe3.c;
                    list = k55.f;
                } else {
                    list = bw4VarA.j;
                }
                bw4 bw4VarA3 = bw4VarA.a(h14Var3, jLongValue, jLongValue, jLongValue, 0L, g06Var, q06Var, list).a(h14Var3);
                bw4VarA3.p = jLongValue;
                return bw4VarA3;
            }
            defpackage.ud.g();
            return null;
        }
        if (jLongValue == jA3) {
            int iA = hx4Var.a(bw4VarA.k.a);
            if (iA != -1 && hx4Var.a(iA, this.m, false).d == hx4Var.a(h14Var2.a, this.m).d) {
                return bw4VarA;
            }
            hx4Var.a(h14Var2.a, this.m);
            boolean zA = h14Var2.a();
            hx5 hx5Var = this.m;
            if (zA) {
                jA = hx5Var.a(h14Var2.b, h14Var2.c);
            } else {
                jA = hx5Var.e;
            }
            h14 h14Var4 = h14Var2;
            bw4 bw4VarA4 = bw4VarA.a(h14Var4, bw4VarA.r, bw4VarA.r, bw4VarA.d, jA - bw4VarA.r, bw4VarA.h, bw4VarA.i, bw4VarA.j).a(h14Var4);
            bw4VarA4.p = jA;
            return bw4VarA4;
        }
        h14 h14Var5 = h14Var2;
        if (!h14Var5.a()) {
            long jMax = Math.max(0L, bw4VarA.q - (jLongValue - jA3));
            long j = bw4VarA.p;
            if (bw4VarA.k.equals(bw4VarA.b)) {
                j = jLongValue + jMax;
            }
            bw4 bw4VarA5 = bw4VarA.a(h14Var5, jLongValue, jLongValue, jLongValue, jMax, bw4VarA.h, bw4VarA.i, bw4VarA.j);
            bw4VarA5.p = j;
            return bw4VarA5;
        }
        defpackage.ud.g();
        return null;
    }

    public final Pair a(hx4 hx4Var, int i, long j) {
        if (hx4Var.c()) {
            this.c0 = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.d0 = j;
            return null;
        }
        if (i == -1 || i >= hx4Var.e) {
            i = hx4Var.a(false);
            j = u56.b(hx4Var.a(i, this.a, 0L).n);
        }
        return hx4Var.a(this.a, this.m, i, u56.a(j));
    }

    public final uw4 a(tw4 tw4Var) {
        int iH = h();
        mq2 mq2Var = this.j;
        kx5 kx5Var = this.b0.a;
        if (iH == -1) {
            iH = 0;
        }
        return new uw4(mq2Var, tw4Var, kx5Var, iH, this.s, mq2Var.k);
    }

    public final void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        a(surface);
        this.L = surface;
    }

    public final void a(Surface surface) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (gs gsVar : this.g) {
            if (gsVar.b == 2) {
                uw4 uw4VarA = a(gsVar);
                boolean z2 = uw4VarA.g;
                if (!z2) {
                    uw4VarA.d = 1;
                    if (!z2) {
                        uw4VarA.e = surface;
                        arrayList.add(uw4VarA.a());
                    } else {
                        defpackage.ud.g();
                        return;
                    }
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
        }
        Surface surface2 = this.K;
        if (surface2 != null && surface2 != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((uw4) it.next()).a(this.A);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Surface surface3 = this.K;
            Surface surface4 = this.L;
            if (surface3 == surface4) {
                surface4.release();
                this.L = null;
            }
        }
        this.K = surface;
        if (z) {
            a(new up2(2, new cr2(3), 1003));
        }
    }

    public final void a(final int i, final int i2) {
        if (i == this.R && i2 == this.S) {
            return;
        }
        this.R = i;
        this.S = i2;
        wt3 wt3Var = this.k;
        wt3Var.a(24, new tt3() { // from class: ru9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                ((iw4) obj).onSurfaceSizeChanged(i, i2);
            }
        });
        wt3Var.a();
    }

    public final void a(int i, int i2, boolean z) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        bw4 bw4Var = this.b0;
        if (bw4Var.l == z2 && bw4Var.m == i3) {
            return;
        }
        this.B++;
        int i4 = i3;
        boolean z3 = z2;
        bw4 bw4Var2 = new bw4(bw4Var.a, bw4Var.b, bw4Var.c, bw4Var.d, bw4Var.e, bw4Var.f, bw4Var.g, bw4Var.h, bw4Var.i, bw4Var.j, bw4Var.k, z3, i4, bw4Var.n, bw4Var.p, bw4Var.q, bw4Var.r, bw4Var.o);
        gu5 gu5Var = this.j.i;
        gu5Var.getClass();
        fu5 fu5VarA = gu5.a();
        fu5VarA.a = gu5Var.a.obtainMessage(1, z3 ? 1 : 0, i4);
        fu5VarA.b();
        a(bw4Var2, 0, i2, false, 5, C.TIME_UNSET);
    }

    public final void a(int i, int i2, Object obj) {
        for (gs gsVar : this.g) {
            if (gsVar.b == i) {
                uw4 uw4VarA = a(gsVar);
                boolean z = uw4VarA.g;
                if (!z) {
                    uw4VarA.d = i2;
                    if (!z) {
                        uw4VarA.e = obj;
                        uw4VarA.a();
                    } else {
                        defpackage.ud.g();
                        return;
                    }
                } else {
                    defpackage.ud.g();
                    return;
                }
            }
        }
    }
}
