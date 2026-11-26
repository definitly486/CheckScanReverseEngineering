package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.u96;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1030jl {
    public final C0989i5 a;
    public final C0963h5 b;
    public final InterfaceC0891eb c;
    public final InterfaceC0891eb d;
    public final InterfaceC0891eb e;
    public Tk f;
    public int g = 0;
    public Long h = null;

    public C1030jl(C0989i5 c0989i5, C0963h5 c0963h5, C1354wa c1354wa, O2 o2, C0979hl c0979hl) {
        this.a = c0989i5;
        this.b = c0963h5;
        this.c = c1354wa;
        this.d = o2;
        this.e = c0979hl;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0101  */
    public final boolean a(Tk tk, C0783a6 c0783a6) {
        boolean z;
        boolean z2;
        if (tk == null) {
            return false;
        }
        long j = c0783a6.i;
        long j2 = tk.d;
        boolean z3 = j2 >= 0;
        C1056kl c1056klA = tk.a.e.a(j2, tk.c.a);
        if (c1056klA != null) {
            C1233rh c1233rh = (C1233rh) tk.a.k.a();
            List listI = u96.i(Boolean.valueOf(aa4.e(c1233rh.getAnalyticsSdkVersionName(), c1056klA.n)), Boolean.valueOf(aa4.e(c1233rh.getAnalyticsSdkBuildNumber(), c1056klA.o)), Boolean.valueOf(aa4.e(c1233rh.getAppVersion(), c1056klA.d)), Boolean.valueOf(aa4.e(c1233rh.getAppBuildNumber(), c1056klA.e)), Boolean.valueOf(aa4.e(c1233rh.getOsVersion(), c1056klA.g)), Boolean.valueOf(c1056klA.h == c1233rh.getOsApiLevel()), Boolean.valueOf(c1056klA.m == c1233rh.r));
            if (!(listI instanceof Collection) || !listI.isEmpty()) {
                Iterator it = listI.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!((Boolean) it.next()).booleanValue()) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        } else {
            z = false;
        }
        long jElapsedRealtime = tk.l.elapsedRealtime();
        long j3 = tk.i;
        boolean z4 = jElapsedRealtime < j3;
        long j4 = j - j3;
        long j5 = j - tk.e;
        if (z4) {
            z2 = true;
        } else {
            Wk wk = tk.c;
            int iIntValue = ((C1233rh) tk.a.k.a()).f;
            Integer num = wk.e;
            if (num != null) {
                iIntValue = num.intValue();
            }
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (j4 >= timeUnit.toMillis(iIntValue) || j5 >= timeUnit.toMillis(Xk.a)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z3 && z && !z2 && !tk.k) {
            return true;
        }
        b(tk, c0783a6);
        return false;
    }

    public final synchronized Tk b(C0783a6 c0783a6) {
        try {
            d(c0783a6);
            if (this.g != 1 && !a(this.f, c0783a6)) {
                this.g = 1;
                this.f = null;
            }
            int iA = W7.a(this.g);
            if (iA == 1) {
                Tk tk = this.f;
                long j = c0783a6.i;
                tk.i = j;
                C1134nl c1134nl = tk.b;
                c1134nl.a(C1134nl.d, Long.valueOf(j));
                c1134nl.a();
                return this.f;
            }
            if (iA == 2) {
                return this.f;
            }
            this.a.m.info("Start background session", new Object[0]);
            this.g = 2;
            long j2 = c0783a6.i;
            Tk tkA = this.d.a(new Uk(j2, c0783a6.j, null));
            a(tkA.d);
            if (this.a.t.c()) {
                C0963h5 c0963h5 = this.b;
                c0963h5.a.n.a(C0783a6.a(c0783a6, Fa.I.i()), a(tkA, c0783a6.i));
            } else {
                int i = c0783a6.d;
                EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
                if (i == 6145) {
                    C0963h5 c0963h6 = this.b;
                    c0963h6.a.n.a(c0783a6, a(tkA, j2));
                    C0963h5 c0963h7 = this.b;
                    c0963h7.a.n.a(C0783a6.a(c0783a6, Fa.I.i()), a(tkA, j2));
                }
            }
            this.f = tkA;
            return tkA;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(C0783a6 c0783a6) {
        try {
            d(c0783a6);
            int iA = W7.a(this.g);
            if (iA == 0) {
                this.f = a(c0783a6);
            } else if (iA == 1) {
                b(this.f, c0783a6);
                this.f = a(c0783a6);
            } else if (iA == 2) {
                if (a(this.f, c0783a6)) {
                    Tk tk = this.f;
                    long j = c0783a6.i;
                    tk.i = j;
                    C1134nl c1134nl = tk.b;
                    c1134nl.a(C1134nl.d, Long.valueOf(j));
                    c1134nl.a();
                } else {
                    this.f = a(c0783a6);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void d(C0783a6 c0783a6) {
        if (this.g == 0) {
            Tk tkA = this.c.a();
            if (tkA != null) {
                a(tkA.d);
            }
            if (a(tkA, c0783a6)) {
                this.f = tkA;
                this.g = 3;
                return;
            }
            Tk tkA2 = this.d.a();
            if (tkA2 != null) {
                a(tkA2.d);
            }
            if (a(tkA2, c0783a6)) {
                this.f = tkA2;
                this.g = 2;
            } else {
                this.f = null;
                this.g = 1;
            }
        }
    }

    public final void b(Tk tk, C0783a6 c0783a6) {
        if (tk.h && tk.d > 0) {
            C0963h5 c0963h5 = this.b;
            C0783a6 c0783a6A = C0783a6.a(c0783a6, EnumC1176pb.EVENT_TYPE_ALIVE);
            C1108ml c1108ml = new C1108ml();
            c1108ml.a = tk.d;
            c1108ml.d = tk.c.a;
            long andIncrement = tk.g.getAndIncrement();
            C1134nl c1134nl = tk.b;
            c1134nl.a(C1134nl.g, Long.valueOf(tk.g.get()));
            c1134nl.a();
            c1108ml.b = andIncrement;
            c1108ml.c = Math.max(tk.i - tk.e, tk.j) / 1000;
            c0963h5.a.n.a(c0783a6A, c1108ml);
            if (tk.h) {
                tk.h = false;
                C1134nl c1134nl2 = tk.b;
                c1134nl2.a(C1134nl.j, Boolean.FALSE);
                c1134nl2.a();
            }
        }
        PublicLogger publicLogger = this.a.m;
        int iOrdinal = tk.c.a.ordinal();
        if (iOrdinal == 0) {
            publicLogger.info("Finish foreground session", new Object[0]);
        } else if (iOrdinal == 1) {
            publicLogger.info("Finish background session", new Object[0]);
        }
        synchronized (tk) {
            C1134nl c1134nl3 = tk.b;
            c1134nl3.getClass();
            c1134nl3.c = new C1279tb();
            c1134nl3.a();
        }
    }

    public final void a(long j) {
        Long l = this.h;
        if (l == null || j < l.longValue()) {
            this.h = Long.valueOf(j);
        }
    }

    public final Tk a(C0783a6 c0783a6) {
        this.a.m.info("Start foreground session", new Object[0]);
        long j = c0783a6.i;
        Tk tkA = this.c.a(new Uk(j, c0783a6.j, null));
        a(tkA.d);
        this.g = 3;
        ((C1324v5) this.a.p).e();
        C0963h5 c0963h5 = this.b;
        c0963h5.a.n.a(C0783a6.a(c0783a6, Fa.I.i()), a(tkA, j));
        return tkA;
    }

    public final synchronized long a() {
        long jLongValue;
        try {
            Long l = this.h;
            if (l == null) {
                return 10000000000L;
            }
            Tk tk = this.f;
            if (tk != null) {
                jLongValue = tk.d;
            } else {
                jLongValue = l.longValue();
            }
            return Math.max(this.h.longValue(), jLongValue - 10);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static C1108ml a(Tk tk, long j) {
        C1108ml c1108ml = new C1108ml();
        c1108ml.a = tk.d;
        long andIncrement = tk.g.getAndIncrement();
        C1134nl c1134nl = tk.b;
        c1134nl.a(C1134nl.g, Long.valueOf(tk.g.get()));
        c1134nl.a();
        c1108ml.b = andIncrement;
        C1134nl c1134nl2 = tk.b;
        long j2 = j - tk.e;
        tk.j = j2;
        c1134nl2.a(C1134nl.e, Long.valueOf(j2));
        c1134nl2.a();
        c1108ml.c = tk.j / 1000;
        c1108ml.d = tk.c.a;
        return c1108ml;
    }
}
