package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.system.SystemPropertiesHelper;
import java.io.File;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1169p4 {
    public static volatile C1169p4 y;
    public final E6 a;
    public final P7 b;
    public final C0910f4 c;
    public final U1 d;
    public final C1138o e;
    public final C1186pl f;
    public final P5 g;
    public final C1086m h;
    public final C1417yn i;
    public Hd j;
    public final C1294u0 k;
    public volatile C1091m4 l;
    public final C0893ed m;
    public volatile Cif n;
    public volatile Cif o;
    public C1184pj p;
    public final C0 q;
    public final Z1 r;
    public final C1226ra s;
    public volatile C0880e0 t;
    public volatile Z9 u;
    public volatile S7 v;
    public volatile C1195q4 w;
    public volatile C1109mm x;

    public C1169p4(E6 e6, P7 p7, C0910f4 c0910f4, C1086m c1086m, U1 u1, C1138o c1138o, C1186pl c1186pl, P5 p5, C1417yn c1417yn, C1294u0 c1294u0) {
        this.m = new C0893ed();
        this.q = new C0();
        this.r = new Z1();
        this.s = new C1226ra();
        new O7();
        this.v = new S7();
        this.a = e6;
        this.b = p7;
        this.c = c0910f4;
        this.h = c1086m;
        this.d = u1;
        this.e = c1138o;
        this.f = c1186pl;
        this.g = p5;
        this.i = c1417yn;
        this.k = c1294u0;
    }

    public static C1169p4 l() {
        if (y == null) {
            synchronized (C1169p4.class) {
                try {
                    if (y == null) {
                        y = new C1169p4(new E6(), new C1138o(), new C0910f4());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return y;
    }

    public final synchronized Hd a(Context context) {
        Hd hd;
        hd = this.j;
        if (hd == null) {
            hd = new Hd(context, new yo());
            this.j = hd;
        }
        return hd;
    }

    public final Cif b(Context context) {
        Cif cif;
        Cif cif2 = this.n;
        if (cif2 != null) {
            return cif2;
        }
        synchronized (this) {
            try {
                cif = this.n;
                if (cif == null) {
                    C1195q4 c1195q4E = e(context);
                    new C1013j4(c(context)).a(context);
                    Cif cif3 = new Cif(c1195q4E.a(context));
                    this.n = cif3;
                    cif = cif3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cif;
    }

    public final Cif c(Context context) {
        Cif cif;
        Cif cif2 = this.o;
        if (cif2 != null) {
            return cif2;
        }
        synchronized (this) {
            try {
                cif = this.o;
                if (cif == null) {
                    Cif cif3 = new Cif(e(context).b(context));
                    this.o = cif3;
                    cif = cif3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cif;
    }

    public final C1109mm d(Context context) {
        C1109mm c1109mm;
        C1109mm c1109mm2 = this.x;
        if (c1109mm2 != null) {
            return c1109mm2;
        }
        synchronized (this) {
            try {
                c1109mm = this.x;
                if (c1109mm == null) {
                    c1109mm = new C1109mm(context, b(context));
                    this.x = c1109mm;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1109mm;
    }

    public final C1195q4 e(Context context) {
        C1195q4 c1195q4;
        File file;
        C1195q4 c1195q5 = this.w;
        if (c1195q5 != null) {
            return c1195q5;
        }
        synchronized (this) {
            c1195q4 = this.w;
            if (c1195q4 == null) {
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
                    c1195q4 = new C1195q4(file);
                    this.w = c1195q4;
                }
                file = null;
                c1195q4 = new C1195q4(file);
                this.w = c1195q4;
            }
        }
        return c1195q4;
    }

    public final Z1 f() {
        return this.r;
    }

    public final C0910f4 g() {
        return this.c;
    }

    public final P5 h() {
        return this.g;
    }

    public final E6 i() {
        return this.a;
    }

    public final P7 j() {
        return this.b;
    }

    public final C1226ra k() {
        return this.s;
    }

    public final C1091m4 m() {
        C1091m4 c1091m4;
        C1091m4 c1091m5 = this.l;
        if (c1091m5 != null) {
            return c1091m5;
        }
        synchronized (this) {
            try {
                c1091m4 = this.l;
                if (c1091m4 == null) {
                    c1091m4 = new C1091m4();
                    this.l = c1091m4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1091m4;
    }

    public final E6 n() {
        return this.a;
    }

    public final C1186pl o() {
        return this.f;
    }

    public final C1138o a() {
        return this.e;
    }

    public final C0 d() {
        return this.q;
    }

    public final C1294u0 c() {
        return this.k;
    }

    public final C0880e0 b() {
        C0880e0 c0880e0;
        C0880e0 c0880e1 = this.t;
        if (c0880e1 != null) {
            return c0880e1;
        }
        synchronized (this) {
            try {
                c0880e0 = this.t;
                if (c0880e0 == null) {
                    c0880e0 = new C0880e0(this.q, this.f, this.c);
                    this.t = c0880e0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0880e0;
    }

    public final U1 e() {
        return this.d;
    }

    public C1169p4(E6 e6, C1138o c1138o, C0910f4 c0910f4, C1086m c1086m) {
        this(e6, new P7(), c0910f4, c1086m, new U1(), c1138o, new C1186pl(c1138o, c1086m), new P5(c1138o), new C1417yn(), new C1294u0());
    }

    public C1169p4(E6 e6, C1138o c1138o, C0910f4 c0910f4) {
        this(e6, c1138o, c0910f4, new C1086m(c1138o));
    }
}
