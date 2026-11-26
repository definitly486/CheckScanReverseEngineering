package io.appmetrica.analytics.push.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1489m extends C1475i {
    public final String b;
    public final String c;

    public C1489m(String str, String str2) {
        super(7);
        this.b = str;
        this.c = str2;
    }

    @Override // io.appmetrica.analytics.push.impl.C1475i
    public final JSONObject a() {
        return super.a().put("category", this.b).put("details", this.c);
    }
}
