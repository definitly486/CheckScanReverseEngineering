package io.appmetrica.analytics.push.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1486l extends C1475i {
    public final String b;

    public C1486l(String str) {
        super(8);
        this.b = str;
    }

    @Override // io.appmetrica.analytics.push.impl.C1475i
    public final JSONObject a() {
        return super.a().put("category", this.b);
    }
}
