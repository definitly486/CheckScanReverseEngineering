package io.appmetrica.analytics.impl;

import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1102mf extends Kd implements Ko {
    public static final C1076lf d = new C1076lf("LOCATION_TRACKING_ENABLED", null);
    public static final C1076lf e = new C1076lf("PREF_KEY_OFFSET", null);
    public static final C1076lf f = new C1076lf("UNCHECKED_TIME", null);
    public static final C1076lf g = new C1076lf("STATISTICS_RESTRICTED_IN_MAIN", null);
    public static final C1076lf h = new C1076lf("NEXT_REPORT_SEND_ATTEMPT_NUMBER", null);
    public static final C1076lf i = new C1076lf("NEXT_LOCATION_SEND_ATTEMPT_NUMBER", null);
    public static final C1076lf j = new C1076lf("NEXT_STARTUP_SEND_ATTEMPT_NUMBER", null);
    public static final C1076lf k = new C1076lf("LAST_REPORT_SEND_ATTEMPT_TIME", null);
    public static final C1076lf l = new C1076lf("LAST_LOCATION_SEND_ATTEMPT_TIME", null);
    public static final C1076lf m = new C1076lf("LAST_STARTUP_SEND_ATTEMPT_TIME", null);
    public static final C1076lf n = new C1076lf("SATELLITE_PRELOAD_INFO_CHECKED", null);
    public static final C1076lf o = new C1076lf("SATELLITE_CLIDS_CHECKED", null);
    public static final C1076lf p = new C1076lf("VITAL_DATA", null);
    public static final C1076lf q = new C1076lf("LAST_KOTLIN_VERSION_SEND_TIME", null);
    public static final C1076lf r = new C1076lf("ADV_IDENTIFIERS_TRACKING_ENABLED", null);

    public C1102mf(Va va) {
        super(va);
    }

    public final int a(EnumC0946ge enumC0946ge, int i2) {
        C1076lf c1076lf;
        int iOrdinal = enumC0946ge.ordinal();
        if (iOrdinal == 0) {
            c1076lf = h;
        } else if (iOrdinal != 1) {
            c1076lf = iOrdinal != 2 ? null : j;
        } else {
            c1076lf = i;
        }
        if (c1076lf == null) {
            return i2;
        }
        return this.a.getInt(c1076lf.b, i2);
    }

    public final C1102mf b(EnumC0946ge enumC0946ge, int i2) {
        C1076lf c1076lf;
        int iOrdinal = enumC0946ge.ordinal();
        if (iOrdinal == 0) {
            c1076lf = h;
        } else if (iOrdinal != 1) {
            c1076lf = iOrdinal != 2 ? null : j;
        } else {
            c1076lf = i;
        }
        return c1076lf != null ? (C1102mf) d(c1076lf.b, i2) : this;
    }

    public final void c(boolean z) {
        d(g.b, z).flushAsync();
    }

    public final Boolean d() {
        C1076lf c1076lf = g;
        if (!this.a.a(c1076lf.b)) {
            return null;
        }
        return Boolean.valueOf(this.a.getBoolean(c1076lf.b, true));
    }

    public final boolean e() {
        return this.a.getBoolean(d.b, false);
    }

    public final long f() {
        return this.a.getLong(q.b, 0L);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf, io.appmetrica.analytics.impl.Nl, io.appmetrica.analytics.impl.Ko
    public final void flushAsync() {
        this.a.flushAsync();
    }

    public final void g() {
        d(o.b, true).flushAsync();
    }

    public final void h() {
        d(n.b, true).flushAsync();
    }

    public final boolean i() {
        return this.a.getBoolean(n.b, false);
    }

    public final boolean j() {
        return this.a.getBoolean(o.b, false);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Set<String> c() {
        return this.a.b();
    }

    public final void e(boolean z) {
        d(r.b, z).flushAsync();
    }

    public final void f(boolean z) {
        d(d.b, z).flushAsync();
    }

    @Override // io.appmetrica.analytics.impl.Kd
    public final String g(String str) {
        return new C1076lf(str, null).b;
    }

    public final C1102mf d(boolean z) {
        return (C1102mf) d(f.b, z);
    }

    public final boolean b(boolean z) {
        return this.a.getBoolean(f.b, z);
    }

    public final C1102mf a(long j2) {
        return (C1102mf) d(q.b, j2);
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final String b() {
        return this.a.getString(p.b, null);
    }

    @Override // io.appmetrica.analytics.impl.Ko
    public final void a(String str) {
        d(p.b, str).flushAsync();
    }

    public final C1102mf b(long j2) {
        return (C1102mf) d(e.b, j2);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf, io.appmetrica.analytics.impl.Ko
    public final void a() {
        super.a();
    }

    public final boolean a(boolean z) {
        return this.a.getBoolean(r.b, z);
    }

    public final C1102mf b(EnumC0946ge enumC0946ge, long j2) {
        C1076lf c1076lf;
        int iOrdinal = enumC0946ge.ordinal();
        if (iOrdinal == 0) {
            c1076lf = k;
        } else if (iOrdinal != 1) {
            c1076lf = iOrdinal != 2 ? null : m;
        } else {
            c1076lf = l;
        }
        return c1076lf != null ? (C1102mf) d(c1076lf.b, j2) : this;
    }

    public final long a(int i2) {
        return this.a.getLong(e.b, i2);
    }

    public final long a(EnumC0946ge enumC0946ge, long j2) {
        C1076lf c1076lf;
        int iOrdinal = enumC0946ge.ordinal();
        if (iOrdinal == 0) {
            c1076lf = k;
        } else if (iOrdinal != 1) {
            c1076lf = iOrdinal != 2 ? null : m;
        } else {
            c1076lf = l;
        }
        if (c1076lf == null) {
            return j2;
        }
        return this.a.getLong(c1076lf.b, j2);
    }
}
