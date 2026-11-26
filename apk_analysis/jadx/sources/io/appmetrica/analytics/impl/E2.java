package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class E2 {
    public final C1024jf a;
    public final long b;
    public final long c;
    public final SystemTimeProvider d;
    public final Map e;

    public E2(C0808b5 c0808b5, C1024jf c1024jf) {
        this.a = c1024jf;
        c0808b5.b();
        this.b = 60000L;
        this.c = 604800000L;
        this.d = new SystemTimeProvider();
        Map<String, Long> mapF = c1024jf.f();
        a(mapF);
        this.e = mapF;
    }

    public final void a(Map map) {
        long jCurrentTimeMillis = this.d.currentTimeMillis();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (((Number) entry.getValue()).longValue() < jCurrentTimeMillis - this.c) {
                linkedHashSet.add(str);
            }
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            map.remove((String) it.next());
        }
    }
}
