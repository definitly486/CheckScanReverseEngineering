package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0976hi implements Runnable {
    public final /* synthetic */ List a;
    public final /* synthetic */ C1157oi b;

    public RunnableC0976hi(C1157oi c1157oi, List list) {
        this.b = c1157oi;
        this.a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1157oi c1157oi = this.b;
        C1157oi.a(c1157oi.a, c1157oi.d, c1157oi.e).reportAnr(CollectionUtils.getMapFromList(this.a));
    }
}
