package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ah, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0794ah extends Ug {
    public final Go b;

    public C0794ah(C0989i5 c0989i5) {
        this(c0989i5, c0989i5.u());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        C0989i5 c0989i5 = this.a;
        if (!this.b.c()) {
            if (!this.b.d()) {
                C1353w9 c1353w9 = c0989i5.n;
                c1353w9.c.b(C0783a6.a(c0783a6, EnumC1176pb.EVENT_TYPE_FIRST_ACTIVATION));
            }
            Go go = this.b;
            synchronized (go) {
                JSONObject jSONObjectA = go.a.a();
                if (!jSONObjectA.optBoolean("first_event_done", false)) {
                    go.a.a(jSONObjectA.put("first_event_done", true));
                }
                Ho ho = go.a;
                Ho.a(ho.a);
                Ho.a(ho.b);
            }
        }
        return false;
    }

    public C0794ah(C0989i5 c0989i5, Go go) {
        super(c0989i5);
        this.b = go;
    }
}
