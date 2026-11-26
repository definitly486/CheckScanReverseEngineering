package io.appmetrica.analytics.screenshot.impl;

import defpackage.lg;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class O {
    public final boolean a;
    public final List b;
    public final long c;

    public O() {
        this(new x().a, AbstractC1542m.a(), new x().b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServiceSideContentObserverCaptorConfig(enabled=");
        sb.append(this.a);
        sb.append(", mediaStoreColumnNames=");
        sb.append(this.b);
        sb.append(", detectWindowSeconds=");
        return lg.f(sb, this.c, ')');
    }

    public O(boolean z, List list, long j) {
        this.a = z;
        this.b = list;
        this.c = j;
    }
}
