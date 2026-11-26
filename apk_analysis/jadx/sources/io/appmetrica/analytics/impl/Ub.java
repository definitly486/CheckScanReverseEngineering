package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class Ub {
    public final C0806b3 a;
    public final C1321v2 b;
    public final ArrayList c;

    public Ub(C0806b3 c0806b3, C1321v2 c1321v2) {
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        this.a = c0806b3;
        arrayList.add(c0806b3);
        this.b = c1321v2;
        arrayList.add(c1321v2);
    }

    public final synchronized void a() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((Bk) it.next()).onCreate();
        }
    }

    public final synchronized void a(Ea ea) {
        this.c.add(ea);
    }
}
