package io.appmetrica.analytics.screenshot.impl;

import defpackage.aa4;
import defpackage.e2;
import defpackage.lg;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1539j {
    public final boolean a;
    public final List b;
    public final long c;

    public C1539j(boolean z, List list, long j) {
        this.a = z;
        this.b = list;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1539j)) {
            return false;
        }
        C1539j c1539j = (C1539j) obj;
        return this.a == c1539j.a && aa4.e(this.b, c1539j.b) && this.c == c1539j.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + e2.b(this.b, Boolean.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClientSideContentObserverCaptorConfig(enabled=");
        sb.append(this.a);
        sb.append(", mediaStoreColumnNames=");
        sb.append(this.b);
        sb.append(", detectWindowSeconds=");
        return lg.f(sb, this.c, ')');
    }
}
