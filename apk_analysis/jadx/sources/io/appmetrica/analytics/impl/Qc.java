package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class Qc {
    public final Map a;
    public final Object b;

    public Qc(Object obj) {
        this(new HashMap(), obj);
    }

    public final Object a(Object obj) {
        Object obj2 = this.a.get(obj);
        return obj2 == null ? this.b : obj2;
    }

    public Qc(HashMap map, Object obj) {
        this.a = map;
        this.b = obj;
    }

    public final void a(Object obj, Object obj2) {
        this.a.put(obj, obj2);
    }
}
