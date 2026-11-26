package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.cl4;
import defpackage.fh8;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.rn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1239rn implements InterfaceC1293u {
    public final C1343w b;
    public final C1318v a = new C1318v();
    public final cl4 c = new fh8(new C1214qn(this));

    public C1239rn(Context context) {
        this.b = new C1343w(context);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1293u
    public final Map<String, String> a(Map<String, String> map) {
        map.putAll((Map) this.c.getValue());
        return map;
    }
}
