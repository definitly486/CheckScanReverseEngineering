package io.appmetrica.analytics.idsync.impl;

import defpackage.kn1;
import defpackage.m05;
import defpackage.n05;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class M {
    public final ModulePreferences a;
    public final L b = new L();
    public final String c = "request_state";
    public final Map d = n05.n(a());

    public M(ModulePreferences modulePreferences) {
        this.a = modulePreferences;
    }

    public final LinkedHashMap a() {
        List<K> model = this.b.toModel(this.a.getString(this.c, null));
        int iB = m05.b(kn1.q(model, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Object obj : model) {
            linkedHashMap.put(((K) obj).a, obj);
        }
        return linkedHashMap;
    }
}
