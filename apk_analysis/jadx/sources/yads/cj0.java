package yads;

import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.a68;
import defpackage.gg8;
import defpackage.hg8;
import defpackage.ig8;
import defpackage.jg8;
import defpackage.jr9;
import defpackage.lq9;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import yads.cj0;
import yads.cu3;
import yads.hw4;
import yads.ne;
import yads.oi0;
import yads.p04;
import yads.pe;
import yads.r04;
import yads.t04;
import yads.vz2;

/* JADX INFO: loaded from: classes6.dex */
public final class cj0 implements ge {
    public final x00 a;
    public final hx5 b;
    public final jx5 c;
    public final bj0 d;
    public final SparseArray e;
    public wt3 f;
    public eq2 g;
    public gu5 h;

    public cj0(x00 x00Var) {
        x00Var.getClass();
        this.a = x00Var;
        int i = u56.a;
        Looper looperMyLooper = Looper.myLooper();
        this.f = new wt3(new CopyOnWriteArraySet(), looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, x00Var, new defpackage.pg(9));
        hx5 hx5Var = new hx5();
        this.b = hx5Var;
        this.c = new jx5();
        this.d = new bj0(hx5Var);
        this.e = new SparseArray();
    }

    public static void b(ne neVar, int i, long j, long j2, pe peVar) {
        String str;
        w04 w04Var = (w04) peVar;
        w04Var.getClass();
        h14 h14Var = neVar.d;
        if (h14Var != null) {
            wl0 wl0Var = w04Var.b;
            kx5 kx5Var = neVar.b;
            synchronized (wl0Var) {
                str = wl0Var.a(kx5Var.a(h14Var.a, wl0Var.b).d, h14Var).a;
            }
            Long l = (Long) w04Var.h.get(str);
            Long l2 = (Long) w04Var.g.get(str);
            w04Var.h.put(str, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            w04Var.g.put(str, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    public final ne a(kx5 kx5Var, int i, h14 h14Var) {
        h14 h14Var2 = kx5Var.c() ? null : h14Var;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        eq2 eq2Var = this.g;
        eq2Var.q();
        boolean z = kx5Var.equals(eq2Var.b0.a) && i == this.g.g();
        long jB = 0;
        if (h14Var2 == null || !h14Var2.a()) {
            if (z) {
                jB = this.g.d();
            } else if (!kx5Var.c()) {
                jB = u56.b(kx5Var.a(i, this.c, 0L).n);
            }
        } else if (z && this.g.e() == h14Var2.b && this.g.f() == h14Var2.c) {
            eq2 eq2Var2 = this.g;
            eq2Var2.q();
            jB = u56.b(eq2Var2.a(eq2Var2.b0));
        }
        long j = jB;
        h14 h14Var3 = this.d.d;
        eq2 eq2Var3 = this.g;
        eq2Var3.q();
        kx5 kx5Var2 = eq2Var3.b0.a;
        int iG = this.g.g();
        eq2 eq2Var4 = this.g;
        eq2Var4.q();
        long jB2 = u56.b(eq2Var4.a(eq2Var4.b0));
        eq2 eq2Var5 = this.g;
        eq2Var5.q();
        return new ne(jElapsedRealtime, kx5Var, i, h14Var2, j, kx5Var2, iG, h14Var3, jB2, u56.b(eq2Var5.b0.q));
    }

    public final void c(ji0 ji0Var) {
        ne neVarA = a(this.d.e);
        a(neVarA, 1020, new ig8(neVarA, ji0Var));
    }

    public final void d() {
        ne neVarA = a();
        a(neVarA, AnalyticsListener.EVENT_PLAYER_RELEASED, new defpackage.k4(neVarA, 6));
        wt3 wt3Var = this.f;
        for (vt3 vt3Var : wt3Var.d) {
            ut3 ut3Var = wt3Var.c;
            vt3Var.d = true;
            if (vt3Var.c) {
                ut3Var.a(vt3Var.a, vt3Var.b.a());
            }
        }
        wt3Var.d.clear();
        wt3Var.g = true;
    }

    @Override // yads.iw4
    public final void onCues(final List list) {
        final ne neVarA = a();
        a(neVarA, 27, new tt3() { // from class: cr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                List list2 = list;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onDeviceVolumeChanged(final int i, final boolean z) {
        final ne neVarA = a();
        a(neVarA, 30, new tt3() { // from class: mq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                boolean z2 = z;
                ne neVar = neVarA;
                int i2 = i;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onIsLoadingChanged(final boolean z) {
        final ne neVarA = a();
        a(neVarA, 3, new tt3() { // from class: wq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                boolean z2 = z;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onIsPlayingChanged(final boolean z) {
        final ne neVarA = a();
        a(neVarA, 7, new tt3() { // from class: jq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                boolean z2 = z;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onPlayWhenReadyChanged(final boolean z, final int i) {
        final ne neVarA = a();
        a(neVarA, 5, new tt3() { // from class: kr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                boolean z2 = z;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onPlaybackStateChanged(final int i) {
        final ne neVarA = a();
        a(neVarA, 4, new tt3() { // from class: rq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onPlaybackSuppressionReasonChanged(final int i) {
        final ne neVarA = a();
        a(neVarA, 6, new tt3() { // from class: qq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onRenderedFirstFrame() {
    }

    @Override // yads.iw4
    public final void onSkipSilenceEnabledChanged(final boolean z) {
        final ne neVarB = b();
        a(neVarB, 23, new tt3() { // from class: nr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                boolean z2 = z;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onSurfaceSizeChanged(final int i, final int i2) {
        final ne neVarB = b();
        a(neVarB, 24, new tt3() { // from class: uq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i3 = i2;
                ne neVar = neVarB;
                int i4 = i;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void onVolumeChanged(final float f) {
        final ne neVarB = b();
        a(neVarB, 22, new tt3() { // from class: hr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                float f2 = f;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    public static void c(ne neVar, ji0 ji0Var, pe peVar) {
        w04 w04Var = (w04) peVar;
        w04Var.x += ji0Var.g;
        w04Var.y += ji0Var.e;
    }

    public final void c(final Exception exc) {
        final ne neVarB = b();
        a(neVarB, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new tt3() { // from class: lr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                Exception exc2 = exc;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.l14
    public final void c(int i, h14 h14Var, final cu3 cu3Var, final r04 r04Var) {
        final ne neVarA = a(i, h14Var);
        a(neVarA, 1002, new tt3() { // from class: pr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                r04 r04Var2 = r04Var;
                ne neVar = neVarA;
                cu3 cu3Var2 = cu3Var;
                ((pe) obj).getClass();
            }
        });
    }

    public final void c() {
        gu5 gu5Var = this.h;
        gu5Var.a.post(new defpackage.om(this, 2));
    }

    public final void d(ji0 ji0Var) {
        ne neVarB = b();
        a(neVarB, 1015, new hg8(neVarB, ji0Var));
    }

    public final void b(final Exception exc) {
        final ne neVarB = b();
        a(neVarB, 1014, new tt3() { // from class: kq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                Exception exc2 = exc;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    public final void b(final String str, final long j, final long j2) {
        final ne neVarB = b();
        a(neVarB, 1016, new tt3() { // from class: er9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                long j3 = j;
                ne neVar = neVarB;
                String str2 = str;
                long j4 = j2;
                ((pe) obj).getClass();
            }
        });
    }

    public final void b(final vz2 vz2Var, final oi0 oi0Var) {
        final ne neVarB = b();
        a(neVarB, 1017, new tt3() { // from class: ir9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                oi0 oi0Var2 = oi0Var;
                ne neVar = neVarB;
                vz2 vz2Var2 = vz2Var;
                ((pe) obj).getClass();
            }
        });
    }

    public final void b(String str) {
        ne neVarB = b();
        a(neVarB, 1019, new defpackage.w43(neVarB, str));
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, final cu3 cu3Var, final r04 r04Var) {
        final ne neVarA = a(i, h14Var);
        a(neVarA, 1000, new tt3() { // from class: br9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                r04 r04Var2 = r04Var;
                ne neVar = neVarA;
                cu3 cu3Var2 = cu3Var;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.l14
    public final void b(int i, h14 h14Var, r04 r04Var) {
        ne neVarA = a(i, h14Var);
        a(neVarA, 1004, new a68(neVarA, r04Var));
    }

    public final void b(ji0 ji0Var) {
        ne neVarB = b();
        a(neVarB, 1007, new defpackage.zz2(neVarB, ji0Var));
    }

    public final void b(final int i, final long j) {
        final ne neVarA = a(this.d.e);
        a(neVarA, 1021, new tt3() { // from class: vq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                long j2 = j;
                ((pe) obj).getClass();
            }
        });
    }

    public final ne b() {
        return a(this.d.f);
    }

    public final void b(final int i, final long j, final long j2) {
        bj0 bj0Var = this.d;
        final ne neVarA = a(bj0Var.b.isEmpty() ? null : (h14) dq3.a(bj0Var.b));
        a(neVarA, 1006, new tt3() { // from class: or9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                cj0.b(neVarA, i, j, j2, (pe) obj);
            }
        });
    }

    @Override // yads.iw4
    public final void b(final zv4 zv4Var) {
        final ne neVarA;
        b14 b14Var;
        if ((zv4Var instanceof up2) && (b14Var = ((up2) zv4Var).i) != null) {
            neVarA = a(new h14(b14Var));
        } else {
            neVarA = a();
        }
        a(neVarA, 10, new tt3() { // from class: pq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                cj0.a(neVarA, zv4Var, (pe) obj);
            }
        });
    }

    public final void a(eq2 eq2Var, Looper looper) {
        if (this.g != null && !this.d.b.isEmpty()) {
            defpackage.ud.g();
            return;
        }
        eq2Var.getClass();
        this.g = eq2Var;
        this.h = ((du5) this.a).a(looper, null);
        wt3 wt3Var = this.f;
        defpackage.me2 me2Var = new defpackage.me2(this, eq2Var);
        this.f = new wt3(wt3Var.d, looper, wt3Var.a, me2Var);
    }

    public final /* synthetic */ void a(kw4 kw4Var, pe peVar, my2 my2Var) {
        ((w04) peVar).a(kw4Var, new oe(my2Var, this.e));
    }

    public final void a(final String str, final long j, final long j2) {
        final ne neVarB = b();
        a(neVarB, 1008, new tt3() { // from class: qr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                long j3 = j;
                ne neVar = neVarB;
                String str2 = str;
                long j4 = j2;
                ((pe) obj).getClass();
            }
        });
    }

    public final void a(vz2 vz2Var, oi0 oi0Var) {
        ne neVarB = b();
        a(neVarB, 1009, new jr9(neVarB, vz2Var, oi0Var));
    }

    public final void a(final long j) {
        final ne neVarB = b();
        a(neVarB, 1010, new tt3() { // from class: ar9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                long j2 = j;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    public final void a(final int i, final long j, final long j2) {
        final ne neVarB = b();
        a(neVarB, 1011, new tt3() { // from class: zq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                long j3 = j2;
                ne neVar = neVarB;
                int i2 = i;
                long j4 = j;
                ((pe) obj).getClass();
            }
        });
    }

    public final void a(final String str) {
        final ne neVarB = b();
        a(neVarB, 1012, new tt3() { // from class: oq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                String str2 = str;
                ne neVar = neVarB;
                ((pe) obj).getClass();
            }
        });
    }

    public final void a(Exception exc) {
        ne neVarB = b();
        a(neVarB, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new jg8(neVarB, exc));
    }

    public final void a(final Object obj, final long j) {
        final ne neVarB = b();
        a(neVarB, 26, new tt3() { // from class: mr9
            @Override // yads.tt3
            public final void invoke(Object obj2) {
                long j2 = j;
                ne neVar = neVarB;
                Object obj3 = obj;
                ((pe) obj2).getClass();
            }
        });
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, cu3 cu3Var, r04 r04Var) {
        ne neVarA = a(i, h14Var);
        a(neVarA, 1001, new defpackage.ni2(neVarA, cu3Var, r04Var));
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, final cu3 cu3Var, final r04 r04Var, final IOException iOException, final boolean z) {
        final ne neVarA = a(i, h14Var);
        a(neVarA, 1003, new tt3() { // from class: sq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                cj0.a(neVarA, cu3Var, r04Var, iOException, z, (pe) obj);
            }
        });
    }

    public static void a(ne neVar, cu3 cu3Var, r04 r04Var, IOException iOException, boolean z, pe peVar) {
        w04 w04Var = (w04) peVar;
        w04Var.getClass();
        w04Var.v = r04Var.a;
    }

    @Override // yads.l14
    public final void a(int i, h14 h14Var, r04 r04Var) {
        ne neVarA = a(i, h14Var);
        a(neVarA, 1005, new defpackage.i22(neVarA, r04Var));
    }

    public static void a(ne neVar, r04 r04Var, pe peVar) {
        String str;
        w04 w04Var = (w04) peVar;
        w04Var.getClass();
        if (neVar.d == null) {
            return;
        }
        vz2 vz2Var = r04Var.c;
        vz2Var.getClass();
        int i = r04Var.d;
        wl0 wl0Var = w04Var.b;
        kx5 kx5Var = neVar.b;
        h14 h14Var = neVar.d;
        h14Var.getClass();
        synchronized (wl0Var) {
            str = wl0Var.a(kx5Var.a(h14Var.a, wl0Var.b).d, h14Var).a;
        }
        v04 v04Var = new v04(vz2Var, i, str);
        int i2 = r04Var.b;
        if (i2 != 0) {
            if (i2 == 1) {
                w04Var.p = v04Var;
                return;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                w04Var.q = v04Var;
                return;
            }
        }
        w04Var.o = v04Var;
    }

    @Override // yads.iw4
    public final void a(final int i) {
        bj0 bj0Var = this.d;
        eq2 eq2Var = this.g;
        eq2Var.getClass();
        bj0Var.d = bj0.a(eq2Var, bj0Var.b, bj0Var.e, bj0Var.a);
        eq2Var.q();
        bj0Var.a(eq2Var.b0.a);
        final ne neVarA = a();
        a(neVarA, 0, new tt3() { // from class: fr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void a(final p04 p04Var, final int i) {
        final ne neVarA = a();
        a(neVarA, 1, new tt3() { // from class: dr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                p04 p04Var2 = p04Var;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void a(m16 m16Var) {
        ne neVarA = a();
        a(neVarA, 2, new gg8(neVarA, m16Var));
    }

    @Override // yads.iw4
    public final void a(final hw4 hw4Var) {
        final ne neVarA = a();
        a(neVarA, 13, new tt3() { // from class: nq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                hw4 hw4Var2 = hw4Var;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void a(final int i, final boolean z) {
        final ne neVarA = a();
        a(neVarA, -1, new tt3() { // from class: gr9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                int i2 = i;
                ne neVar = neVarA;
                boolean z2 = z;
                ((pe) obj).getClass();
            }
        });
    }

    public static void a(ne neVar, zv4 zv4Var, pe peVar) {
        ((w04) peVar).n = zv4Var;
    }

    @Override // yads.iw4
    public final void a(final jw4 jw4Var, final jw4 jw4Var2, final int i) {
        bj0 bj0Var = this.d;
        eq2 eq2Var = this.g;
        eq2Var.getClass();
        bj0Var.d = bj0.a(eq2Var, bj0Var.b, bj0Var.e, bj0Var.a);
        final ne neVarA = a();
        a(neVarA, 11, new tt3() { // from class: xq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                cj0.a(neVarA, i, jw4Var, jw4Var2, (pe) obj);
            }
        });
    }

    public static void a(ne neVar, int i, jw4 jw4Var, jw4 jw4Var2, pe peVar) {
        peVar.getClass();
        w04 w04Var = (w04) peVar;
        if (i == 1) {
            w04Var.u = true;
        }
        w04Var.k = i;
    }

    @Override // yads.iw4
    public final void a(dw4 dw4Var) {
        ne neVarA = a();
        a(neVarA, 12, new defpackage.le2(2, neVarA, dw4Var));
    }

    @Override // yads.iw4
    public final void a(final t04 t04Var) {
        final ne neVarA = a();
        a(neVarA, 14, new tt3() { // from class: yq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                t04 t04Var2 = t04Var;
                ne neVar = neVarA;
                ((pe) obj).getClass();
            }
        });
    }

    @Override // yads.iw4
    public final void a(h84 h84Var) {
        ne neVarA = a();
        a(neVarA, 28, new defpackage.qe2(2, neVarA, h84Var));
    }

    @Override // yads.iw4
    public final void a(ub0 ub0Var) {
        ne neVarA = a();
        a(neVarA, 27, new defpackage.za5(neVarA, ub0Var));
    }

    @Override // yads.iw4
    public final void a(ye6 ye6Var) {
        ne neVarB = b();
        a(neVarB, 25, new defpackage.q31(neVarB, ye6Var));
    }

    public static void a(ne neVar, ye6 ye6Var, pe peVar) {
        w04 w04Var = (w04) peVar;
        v04 v04Var = w04Var.o;
        if (v04Var != null) {
            vz2 vz2Var = v04Var.a;
            if (vz2Var.s == -1) {
                uz2 uz2Var = new uz2(vz2Var);
                uz2Var.p = ye6Var.b;
                uz2Var.q = ye6Var.c;
                w04Var.o = new v04(new vz2(uz2Var), v04Var.b, v04Var.c);
            }
        }
        int i = ye6Var.b;
    }

    @Override // yads.iw4
    public final void a(yn0 yn0Var) {
        ne neVarA = a();
        a(neVarA, 29, new defpackage.i34(neVarA, yn0Var));
    }

    public final void a(ne neVar, int i, tt3 tt3Var) {
        this.e.put(i, neVar);
        wt3 wt3Var = this.f;
        wt3Var.a(i, tt3Var);
        wt3Var.a();
    }

    public final ne a() {
        return a(this.d.d);
    }

    public static /* synthetic */ void a(pe peVar, my2 my2Var) {
    }

    public final ne a(h14 h14Var) {
        this.g.getClass();
        kx5 kx5Var = h14Var == null ? null : (kx5) this.d.c.get(h14Var);
        if (h14Var != null && kx5Var != null) {
            return a(kx5Var, kx5Var.a(h14Var.a, this.b).d, h14Var);
        }
        int iG = this.g.g();
        eq2 eq2Var = this.g;
        eq2Var.q();
        kx5 kx5Var2 = eq2Var.b0.a;
        if (iG >= kx5Var2.b()) {
            kx5Var2 = kx5.b;
        }
        return a(kx5Var2, iG, (h14) null);
    }

    public final void a(ji0 ji0Var) {
        ne neVarA = a(this.d.e);
        a(neVarA, 1013, new defpackage.ke2(1, neVarA, ji0Var));
    }

    public final void a(final int i, final long j) {
        final ne neVarA = a(this.d.e);
        a(neVarA, 1018, new tt3() { // from class: tq9
            @Override // yads.tt3
            public final void invoke(Object obj) {
                long j2 = j;
                ne neVar = neVarA;
                int i2 = i;
                ((pe) obj).getClass();
            }
        });
    }

    public final ne a(int i, h14 h14Var) {
        this.g.getClass();
        if (h14Var != null) {
            if (((kx5) this.d.c.get(h14Var)) != null) {
                return a(h14Var);
            }
            return a(kx5.b, i, h14Var);
        }
        eq2 eq2Var = this.g;
        eq2Var.q();
        kx5 kx5Var = eq2Var.b0.a;
        if (i >= kx5Var.b()) {
            kx5Var = kx5.b;
        }
        return a(kx5Var, i, (h14) null);
    }

    @Override // yads.iw4
    public final void a(zv4 zv4Var) {
        ne neVarA;
        b14 b14Var;
        if ((zv4Var instanceof up2) && (b14Var = ((up2) zv4Var).i) != null) {
            neVarA = a(new h14(b14Var));
        } else {
            neVarA = a();
        }
        a(neVarA, 10, new lq9(neVarA, zv4Var));
    }
}
