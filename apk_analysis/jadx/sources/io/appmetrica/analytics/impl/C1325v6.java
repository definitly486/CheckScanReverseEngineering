package io.appmetrica.analytics.impl;

import defpackage.nn1;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.v6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1325v6 implements Ta {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override // io.appmetrica.analytics.impl.Ta
    public final void a(Throwable th, Y y) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ta) it.next()).a(th, y);
        }
    }

    public final void a(Ta... taArr) {
        nn1.u(this.a, taArr);
    }

    public final void a(List<? extends Ta> list) {
        this.a.addAll(list);
    }

    public final void a() {
        this.a.clear();
    }
}
