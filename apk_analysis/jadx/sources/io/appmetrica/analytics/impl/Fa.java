package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.ta8;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.ReferenceHolder;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import io.appmetrica.analytics.coreutils.internal.system.SystemPropertiesHelper;
import io.appmetrica.analytics.locationapi.internal.LocationClient;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public final class Fa {
    public static volatile Fa I;
    public volatile Z9 C;
    public Ok H;
    public final Context a;
    public volatile C1258sg b;
    public volatile S6 c;
    public volatile C0883e3 e;
    public volatile C1438zj f;
    public volatile X g;
    public volatile C1167p2 h;
    public volatile PlatformIdentifiers i;
    public volatile Gf j;
    public volatile N3 k;
    public volatile C1102mf l;
    public volatile Jo m;
    public volatile C1261sj n;
    public volatile Ub o;
    public Ql p;
    public volatile Nk r;
    public volatile Zb w;
    public volatile An x;
    public volatile Ml y;
    public volatile Hd z;
    public final Ea q = new Ea();
    public final C0893ed s = new C0893ed();
    public final C0945gd t = new C0945gd();
    public final C1391xm u = new C1391xm();
    public final C1314uk v = new C1314uk();
    public final C0791ae A = new C0791ae();
    public final UtilityServiceProvider B = new UtilityServiceProvider();
    public final Ck D = new Ck();
    public final ReferenceHolder E = new ReferenceHolder();
    public final Mk F = new Mk();
    public final C1008j G = new C1008j();
    public final Ak d = new Ak();

    public Fa(Context context) {
        this.a = context;
    }

    public static void a(Context context) {
        if (I == null) {
            synchronized (Fa.class) {
                try {
                    if (I == null) {
                        I = new Fa(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static Fa k() {
        return I;
    }

    public final C1391xm A() {
        return this.u;
    }

    public final Ok B() {
        Ok ok;
        File file;
        Ok ok2 = this.H;
        if (ok2 != null) {
            return ok2;
        }
        synchronized (this) {
            ok = this.H;
            if (ok == null) {
                Context context = this.a;
                String systemProperty = SystemPropertiesHelper.readSystemProperty("ro.yndx.metrica.db.dir");
                String systemProperty2 = SystemPropertiesHelper.readSystemProperty("debug.yndx.iaa.db.dir");
                if (ta8.M(systemProperty)) {
                    systemProperty = systemProperty2;
                }
                if (!ta8.M(systemProperty)) {
                    file = new File(systemProperty, context.getPackageName());
                    try {
                        file.mkdirs();
                    } catch (Exception unused) {
                        file = null;
                    }
                    ok = new Ok(file);
                    this.H = ok;
                }
                file = null;
                ok = new Ok(file);
                this.H = ok;
            }
        }
        return ok;
    }

    public final An C() {
        An an;
        An an2 = this.x;
        if (an2 != null) {
            return an2;
        }
        synchronized (this) {
            try {
                an = this.x;
                if (an == null) {
                    an = new An(this.a);
                    this.x = an;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return an;
    }

    public final synchronized Jo D() {
        try {
            if (this.m == null) {
                this.m = new Jo(this.a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.m;
    }

    public final void E() {
        if (this.j == null) {
            synchronized (this) {
                try {
                    if (this.j == null) {
                        InterfaceC0955gn interfaceC0955gnA = C0929fn.a(C1206qf.class);
                        Context context = this.a;
                        AbstractC0981hn abstractC0981hn = (AbstractC0981hn) interfaceC0955gnA;
                        ProtobufStateStorage<Object> protobufStateStorageA = abstractC0981hn.a(context, abstractC0981hn.a(context));
                        C1206qf c1206qf = (C1206qf) protobufStateStorageA.read();
                        this.j = new Gf(this.a, protobufStateStorageA, new C1384xf(), new C1154of(c1206qf), new Ff(), new C1359wf(this.a), new Bf(k().y()), new C1231rf(), c1206qf, "[PreloadInfoStorage]");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final C1008j b() {
        return this.G;
    }

    public final X c() {
        X x;
        X x2 = this.g;
        if (x2 != null) {
            return x2;
        }
        synchronized (this) {
            try {
                x = this.g;
                if (x == null) {
                    x = new X(this.a, this.d.g(), this.u.a());
                    this.u.a(x);
                    this.g = x;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return x;
    }

    public final C1167p2 d() {
        C1167p2 c1167p2;
        C1167p2 c1167p3 = this.h;
        if (c1167p3 != null) {
            return c1167p3;
        }
        synchronized (this) {
            try {
                c1167p2 = this.h;
                if (c1167p2 == null) {
                    c1167p2 = new C1167p2(this.a, AbstractC1193q2.a());
                    this.h = c1167p2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1167p2;
    }

    public final C1321v2 e() {
        return l().b;
    }

    public final N3 f() {
        if (this.k == null) {
            synchronized (this) {
                try {
                    if (this.k == null) {
                        InterfaceC0955gn interfaceC0955gnA = C0929fn.a(G3.class);
                        Context context = this.a;
                        AbstractC0981hn abstractC0981hn = (AbstractC0981hn) interfaceC0955gnA;
                        ProtobufStateStorage<Object> protobufStateStorageA = abstractC0981hn.a(context, abstractC0981hn.a(context));
                        this.k = new N3(this.a, protobufStateStorageA, new O3(), new B3(), new R3(), new C1002ij(this.a), new P3(y()), new C3(), (G3) protobufStateStorageA.read(), "[ClidsInfoStorage]");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.k;
    }

    public final Context g() {
        return this.a;
    }

    public final S6 h() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.c = new S6(new R6(y()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public final Z9 i() {
        Z9 z9;
        Z9 z10 = this.C;
        if (z10 != null) {
            return z10;
        }
        synchronized (this) {
            try {
                z9 = this.C;
                if (z9 == null) {
                    z9 = new Z9(this.a);
                    this.C = z9;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    public final PermissionExtractor j() {
        Ml ml = this.y;
        if (ml != null) {
            return ml;
        }
        synchronized (this) {
            try {
                Ml ml2 = this.y;
                if (ml2 != null) {
                    return ml2;
                }
                Ml ml3 = new Ml(p().c.getAskForPermissionStrategy());
                this.y = ml3;
                return ml3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Ub l() {
        Ub ub;
        Ub ub2 = this.o;
        if (ub2 != null) {
            return ub2;
        }
        synchronized (this) {
            try {
                ub = this.o;
                if (ub == null) {
                    ub = new Ub(new C0806b3(this.a, this.d.a()), new C1321v2());
                    this.o = ub;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ub;
    }

    public final Zb m() {
        Zb c0815bc;
        Zb zb = this.w;
        if (zb != null) {
            return zb;
        }
        synchronized (this) {
            try {
                c0815bc = this.w;
                if (c0815bc == null) {
                    Context context = this.a;
                    LocationClient locationClient = (LocationClient) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor("io.appmetrica.analytics.location.internal.LocationClientImpl", LocationClient.class);
                    c0815bc = locationClient == null ? new C0815bc() : new C0789ac(context, new C0970hc(), locationClient);
                    this.w = c0815bc;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0815bc;
    }

    public final Zb n() {
        return m();
    }

    public final C0945gd o() {
        return this.t;
    }

    public final Nk p() {
        Nk nk;
        Nk nk2 = this.r;
        if (nk2 != null) {
            return nk2;
        }
        synchronized (this) {
            try {
                nk = this.r;
                if (nk == null) {
                    nk = new Nk();
                    this.r = nk;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nk;
    }

    public final Hd q() {
        Hd hd;
        Hd hd2 = this.z;
        if (hd2 != null) {
            return hd2;
        }
        synchronized (this) {
            try {
                hd = this.z;
                if (hd == null) {
                    hd = new Hd(this.a, new zo());
                    this.z = hd;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hd;
    }

    public final C0791ae r() {
        return this.A;
    }

    public final PlatformIdentifiers s() {
        PlatformIdentifiers platformIdentifiers;
        PlatformIdentifiers platformIdentifiers2 = this.i;
        if (platformIdentifiers2 != null) {
            return platformIdentifiers2;
        }
        synchronized (this) {
            try {
                platformIdentifiers = this.i;
                if (platformIdentifiers == null) {
                    platformIdentifiers = new PlatformIdentifiers(c(), d());
                    this.i = platformIdentifiers;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return platformIdentifiers;
    }

    public final Gf t() {
        E();
        return this.j;
    }

    public final C1258sg u() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new C1258sg(new C1335vg().a(this.a));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final C1261sj v() {
        C1261sj c1261sj;
        C1261sj c1261sj2 = this.n;
        if (c1261sj2 != null) {
            return c1261sj2;
        }
        synchronized (this) {
            try {
                c1261sj = this.n;
                if (c1261sj == null) {
                    c1261sj = new C1261sj(this.a);
                    this.n = c1261sj;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1261sj;
    }

    public final Ak w() {
        return this.d;
    }

    public final Mk x() {
        return this.F;
    }

    public final C1102mf y() {
        if (this.l == null) {
            synchronized (this) {
                try {
                    if (this.l == null) {
                        this.l = new C1102mf(B().d(this.a));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.l;
    }

    public final synchronized Y2 z() {
        try {
            if (this.p == null) {
                Ql ql = new Ql(this.a);
                this.p = ql;
                this.u.a(ql);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.p;
    }

    public final WaitForActivationDelayBarrier a() {
        return this.B.getActivationBarrier();
    }
}
