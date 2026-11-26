package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import defpackage.u96;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.i5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C0989i5 implements Za, Sa, InterfaceC1208qh {
    public final Context a;
    public final C0808b5 b;
    public final C1024jf c;
    public final C1102mf d;
    public final Y6 e;
    public final Bi f;
    public final C1018j9 g;
    public final C1087m0 h;
    public final C1113n0 i;
    public final C1030jl j;
    public final Tg k;
    public final Y8 l;
    public final PublicLogger m;
    public final C1353w9 n;
    public final C0860d5 o;
    public final C9 p;
    public final A3 q;
    public final TimePassedChecker r;
    public final Gf s;
    public final Go t;
    public final C0798al u;
    public final E2 v;

    public C0989i5(Context context, C0808b5 c0808b5, C1113n0 c1113n0, TimePassedChecker timePassedChecker, C1118n5 c1118n5, A4 a4) {
        this.a = context.getApplicationContext();
        this.b = c0808b5;
        this.i = c1113n0;
        this.r = timePassedChecker;
        Go goF = c1118n5.f();
        this.t = goF;
        this.s = Fa.k().t();
        C1024jf c1024jfA = c1118n5.e().a();
        this.c = c1024jfA;
        this.v = c1118n5.a(c1024jfA);
        Tg tgA = c1118n5.a(this);
        this.k = tgA;
        PublicLogger publicLoggerA = c1118n5.d().a();
        this.m = publicLoggerA;
        this.d = Fa.k().y();
        C1087m0 c1087m0A = c1113n0.a(c0808b5, publicLoggerA, c1024jfA);
        this.h = c1087m0A;
        this.l = c1118n5.a();
        Y6 y6B = c1118n5.b(this);
        this.e = y6B;
        Di diD = c1118n5.d(this);
        this.o = C1118n5.b();
        w();
        C1030jl c1030jlA = C1118n5.a(this, goF, new C0963h5(this));
        this.j = c1030jlA;
        publicLoggerA.info("Read app environment for component %s. Value: %s", c0808b5.toString(), c1087m0A.a().a);
        C0798al c0798alC = c1118n5.c();
        this.u = c0798alC;
        this.n = c1118n5.a(c1024jfA, goF, c1030jlA, y6B, c1087m0A, c0798alC, diD);
        C1018j9 c1018j9C = C1118n5.c(this);
        this.g = c1018j9C;
        this.f = C1118n5.a(this, c1018j9C);
        this.q = c1118n5.b(c1024jfA);
        this.p = c1118n5.a(diD, y6B, tgA, a4, c0808b5, c1024jfA);
    }

    public final boolean A() {
        C1233rh c1233rh = (C1233rh) this.k.a();
        return c1233rh.n && this.r.didTimePassSeconds(this.n.k, c1233rh.t, "should force send permissions");
    }

    public final boolean B() {
        C1341vm c1341vm;
        Gf gf = this.s;
        gf.h.a(gf.a);
        boolean z = ((Df) gf.c()).d;
        Tg tg = this.k;
        synchronized (tg) {
            c1341vm = tg.c.a;
        }
        return !(z && c1341vm.q);
    }

    @Override // io.appmetrica.analytics.impl.Za, io.appmetrica.analytics.impl.Sa
    public synchronized void a(A4 a4) {
        long jLongValue;
        try {
            this.k.a(a4);
            boolean z = false;
            if (Boolean.TRUE.equals(a4.h)) {
                this.m.setEnabled(true);
            } else {
                if (Boolean.FALSE.equals(a4.h)) {
                    this.m.setEnabled(false);
                }
            }
            E2 e2 = this.v;
            Set<String> set = a4.o;
            long jCurrentTimeMillis = e2.d.currentTimeMillis();
            boolean z2 = false;
            for (String str : set) {
                Long l = (Long) e2.e.get(str);
                if (l != null) {
                    jLongValue = l.longValue();
                } else {
                    jLongValue = -1;
                    z2 = true;
                }
                if (jCurrentTimeMillis - jLongValue > e2.b) {
                    e2.e.put(str, Long.valueOf(jCurrentTimeMillis));
                    z = true;
                }
            }
            if (z) {
                e2.a(e2.e);
                e2.a.a(e2.e);
            }
            if (z2) {
                this.k.e();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(C0783a6 c0783a6) {
        this.h.a(c0783a6.f);
        C1061l0 c1061l0A = this.h.a();
        C1113n0 c1113n0 = this.i;
        C1024jf c1024jf = this.c;
        synchronized (c1113n0) {
            if (c1061l0A.b > c1024jf.d().b) {
                c1024jf.a(c1061l0A);
                this.m.info("Save new app environment for %s. Value: %s", this.b, c1061l0A.a);
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final void c() {
        Ho ho = this.t.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
        this.e.j.b.flushAsync();
    }

    public final void d() {
        C1087m0 c1087m0 = this.h;
        synchronized (c1087m0) {
            c1087m0.a = new Sc();
        }
        this.i.a(this.h.a(), this.c);
    }

    public final synchronized void e() {
        ((C1324v5) this.p).d();
    }

    public final E2 f() {
        return this.v;
    }

    public final A3 g() {
        return this.q;
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final Context getContext() {
        return this.a;
    }

    public final C1024jf h() {
        return this.c;
    }

    public final Y6 i() {
        return this.e;
    }

    public final Y8 j() {
        return this.l;
    }

    public final C1018j9 k() {
        return this.g;
    }

    public final C1353w9 l() {
        return this.n;
    }

    public final C9 m() {
        return this.p;
    }

    public final C1233rh n() {
        return (C1233rh) this.k.a();
    }

    public final String o() {
        return this.c.j();
    }

    public final PublicLogger p() {
        return this.m;
    }

    public final C1102mf q() {
        return this.d;
    }

    public final C0798al r() {
        return this.u;
    }

    public final C1030jl s() {
        return this.j;
    }

    public final C1341vm t() {
        C1341vm c1341vm;
        Tg tg = this.k;
        synchronized (tg) {
            c1341vm = tg.c.a;
        }
        return c1341vm;
    }

    public final Go u() {
        return this.t;
    }

    public final void v() {
        C1353w9 c1353w9 = this.n;
        int i = c1353w9.j;
        c1353w9.l = i;
        c1353w9.a.a(i);
    }

    public final void w() {
        int iOptInt;
        int libraryApiLevel = AppMetrica.getLibraryApiLevel();
        Go go = this.t;
        synchronized (go) {
            iOptInt = go.a.a().optInt("last_migration_api_level", 0);
        }
        if (iOptInt < libraryApiLevel) {
            this.o.getClass();
            Iterator it = u96.h(new C0911f5(this)).iterator();
            while (it.hasNext()) {
                ((AbstractC0885e5) it.next()).a(iOptInt);
            }
            this.t.b(libraryApiLevel);
        }
    }

    public final boolean x() {
        C1233rh c1233rh = (C1233rh) this.k.a();
        return c1233rh.n && c1233rh.isIdentifiersValid() && this.r.didTimePassSeconds(this.n.k, c1233rh.s, "need to check permissions");
    }

    public final boolean y() {
        C1353w9 c1353w9 = this.n;
        return c1353w9.l < c1353w9.j && ((C1233rh) this.k.a()).o && ((C1233rh) this.k.a()).isIdentifiersValid();
    }

    public final void z() {
        Tg tg = this.k;
        synchronized (tg) {
            tg.a = null;
        }
    }

    public CounterConfigurationReporterType b() {
        return CounterConfigurationReporterType.MANUAL;
    }

    @Override // io.appmetrica.analytics.impl.Za
    public final void a(C0783a6 c0783a6) {
        String strA = AbstractC0896eg.a("Event received on service", EnumC1176pb.a(c0783a6.d), c0783a6.getName(), c0783a6.getValue());
        if (strA != null) {
            this.m.info(strA, new Object[0]);
        }
        String str = this.b.b;
        if (TextUtils.isEmpty(str) || "-1".equals(str)) {
            return;
        }
        this.f.a(c0783a6, new Ai());
    }

    @Override // io.appmetrica.analytics.impl.Za, io.appmetrica.analytics.impl.InterfaceC0954gm
    public final void a(Zl zl, C1341vm c1341vm) {
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final C0808b5 a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.Za, io.appmetrica.analytics.impl.InterfaceC0954gm
    public final synchronized void a(C1341vm c1341vm) {
        this.k.a(c1341vm);
        ((C1324v5) this.p).e();
    }

    public final void a(String str) {
        this.c.j(str).a.flushAsync();
    }

    public C0989i5(Context context, C1341vm c1341vm, C0808b5 c0808b5, A4 a4, InterfaceC1156oh interfaceC1156oh, AbstractC0937g5 abstractC0937g5) {
        this(context, c0808b5, new C1113n0(), new TimePassedChecker(), new C1118n5(context, c0808b5, a4, abstractC0937g5, c1341vm, interfaceC1156oh, Fa.k().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), Fa.k().l(), new C0782a5()), a4);
    }
}
