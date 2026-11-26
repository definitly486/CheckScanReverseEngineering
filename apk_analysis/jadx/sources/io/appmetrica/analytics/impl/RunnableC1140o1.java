package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1140o1 implements Runnable {
    public final /* synthetic */ List a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC1140o1(C1370x1 c1370x1, List list) {
        this.b = c1370x1;
        this.a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).reportAnr(CollectionUtils.getMapFromList(this.a));
    }
}
