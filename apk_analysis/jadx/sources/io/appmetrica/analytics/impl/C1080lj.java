package io.appmetrica.analytics.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1080lj extends Ug {
    public final Gf b;

    public C1080lj(C0989i5 c0989i5) {
        this(c0989i5, Fa.k().t());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        JSONObject jSONObjectOptJSONObject;
        try {
            jSONObjectOptJSONObject = new JSONObject(c0783a6.getValue()).optJSONObject("preloadInfo");
        } catch (Throwable unused) {
            jSONObjectOptJSONObject = null;
        }
        this.b.b(Df.a(jSONObjectOptJSONObject));
        return false;
    }

    public C1080lj(C0989i5 c0989i5, Gf gf) {
        super(c0989i5);
        this.b = gf;
    }
}
