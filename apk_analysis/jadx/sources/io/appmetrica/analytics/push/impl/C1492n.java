package io.appmetrica.analytics.push.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1492n extends C1475i {
    public final String b;

    public C1492n(String str) {
        super(3);
        this.b = str;
    }

    @Override // io.appmetrica.analytics.push.impl.C1475i
    public final JSONObject a() {
        return super.a().put("uri", this.b);
    }
}
