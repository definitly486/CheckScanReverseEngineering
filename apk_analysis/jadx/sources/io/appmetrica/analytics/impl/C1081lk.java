package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1081lk extends Ug {
    public C1081lk(C0989i5 c0989i5) {
        super(c0989i5);
    }

    public static final void b(C1081lk c1081lk) {
        Go go = c1081lk.a.t;
        synchronized (go) {
            JSONObject jSONObjectA = go.a.a();
            if (!jSONObjectA.optBoolean("referrer_handled", false)) {
                go.a.a(jSONObjectA.put("referrer_handled", true));
            }
            Ho ho = go.a;
            Ho.a(ho.a);
            Ho.a(ho.b);
        }
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        if (b()) {
            return false;
        }
        C1258sg c1258sgU = Fa.I.u();
        C1055kk c1055kk = new C1055kk(this);
        c1258sgU.getClass();
        c1258sgU.a.a(new C0874dj(c1055kk));
        return false;
    }

    public final boolean b() {
        boolean zOptBoolean;
        Go go = this.a.t;
        synchronized (go) {
            zOptBoolean = go.a.a().optBoolean("referrer_handled", false);
        }
        return zOptBoolean;
    }
}
