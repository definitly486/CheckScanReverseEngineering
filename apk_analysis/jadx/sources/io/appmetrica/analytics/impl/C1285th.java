package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.th, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1285th extends Ug {
    public final Gf b;
    public final Go c;
    public final SafePackageManager d;
    public final TimeProvider e;

    public C1285th(C0989i5 c0989i5) {
        this(c0989i5, c0989i5.u(), Fa.k().t(), new SafePackageManager(), new SystemTimeProvider());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        C0989i5 c0989i5 = this.a;
        if (!this.c.d()) {
            C0783a6 c0783a6A = ((C1233rh) c0989i5.k.a()).e ? C0783a6.a(c0783a6, EnumC1176pb.EVENT_TYPE_APP_UPDATE) : C0783a6.a(c0783a6, EnumC1176pb.EVENT_TYPE_INIT);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appInstaller", (String) WrapUtils.getOrDefault(this.d.getInstallerPackageName(c0989i5.a, c0989i5.b.a), ""));
                Gf gf = this.b;
                gf.h.a(gf.a);
                jSONObject.put("preloadInfo", ((Df) gf.c()).b());
            } catch (Throwable unused) {
            }
            c0783a6A.setValue(jSONObject.toString());
            C1353w9 c1353w9 = c0989i5.n;
            c1353w9.a(c0783a6A, C1030jl.a(c1353w9.c.b(c0783a6A), c0783a6A.i));
            Go go = this.c;
            synchronized (go) {
                JSONObject jSONObjectA = go.a.a();
                if (!jSONObjectA.optBoolean("init_event_done", false)) {
                    go.a.a(jSONObjectA.put("init_event_done", true));
                }
                Ho ho = go.a;
                Ho.a(ho.a);
                Ho.a(ho.b);
            }
            this.c.a(this.e.currentTimeMillis());
        }
        return false;
    }

    public C1285th(C0989i5 c0989i5, Go go, Gf gf, SafePackageManager safePackageManager, SystemTimeProvider systemTimeProvider) {
        super(c0989i5);
        this.c = go;
        this.b = gf;
        this.d = safePackageManager;
        this.e = systemTimeProvider;
    }
}
