package io.appmetrica.analytics.impl;

import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0929fn {
    public final HashMap a;

    public C0929fn() {
        HashMap map = new HashMap();
        this.a = map;
        Zm zm = new Zm();
        C0800an c0800an = new C0800an();
        C0826bn c0826bn = new C0826bn();
        C0852cn c0852cn = new C0852cn();
        map.put(C1441zm.class, zm);
        map.put(C0986i2.class, c0800an);
        map.put(C1206qf.class, c0826bn);
        map.put(G3.class, c0852cn);
    }

    public static InterfaceC0955gn a(Class cls) {
        return (InterfaceC0955gn) AbstractC0903en.a.a.get(cls);
    }
}
