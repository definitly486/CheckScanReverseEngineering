package com.tapjoy.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 extends l {
    public static final Map f = Collections.unmodifiableMap(new HashMap());
    public final k b;
    public final k c;
    public final k d;
    public final k e;

    public m0() {
        this.a.add(new k());
        k kVar = new k();
        this.a.add(kVar);
        this.b = kVar;
        k kVar2 = new k();
        this.a.add(kVar2);
        this.c = kVar2;
        kVar2.a = new ConcurrentHashMap();
        k kVar3 = new k();
        this.a.add(kVar3);
        this.d = kVar3;
        k kVar4 = new k();
        this.a.add(kVar4);
        this.e = kVar4;
        k kVar5 = new k();
        this.a.add(kVar5);
        HashMap map = new HashMap();
        map.put("placement_request_content_retry_timeout", -1);
        map.put("placement_request_content_retry_backoff", Arrays.asList(0L, 500L, 10000L, Double.valueOf(2.0d)));
        kVar5.a = map;
    }

    public final void a(HashMap map) {
        Map map2;
        Map map3;
        if (map != null) {
            map2 = (Map) map.get("final");
            map3 = (Map) map.get("default");
        } else {
            map2 = null;
            map3 = null;
        }
        this.b.a = map2;
        this.e.a = map3;
        setChanged();
    }
}
