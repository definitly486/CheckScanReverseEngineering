package io.appmetrica.analytics.push.impl;

import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1498p extends C1475i {
    public final String b;

    public C1498p(String str) {
        super(10);
        this.b = str;
    }

    @Override // io.appmetrica.analytics.push.impl.C1475i
    public final JSONObject a() {
        return super.a().put("new_push_id", this.b);
    }
}
