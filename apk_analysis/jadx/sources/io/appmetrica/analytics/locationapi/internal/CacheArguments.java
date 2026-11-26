package io.appmetrica.analytics.locationapi.internal;

import defpackage.jh2;
import defpackage.lg;

/* JADX INFO: loaded from: classes5.dex */
public final class CacheArguments {
    private final long a;
    private final long b;

    public /* synthetic */ CacheArguments(long j, long j2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? 10000L : j, (i & 2) != 0 ? 120000L : j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!CacheArguments.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        CacheArguments cacheArguments = (CacheArguments) obj;
        return this.a == cacheArguments.a && this.b == cacheArguments.b;
    }

    public final long getOutdatedTimeInterval() {
        return this.b;
    }

    public final long getRefreshPeriod() {
        return this.a;
    }

    public int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CacheArguments(refreshPeriod=");
        sb.append(this.a);
        sb.append(", outdatedTimeInterval=");
        return lg.f(sb, this.b, ')');
    }

    public CacheArguments(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public CacheArguments() {
        this(0L, 0L, 3, null);
    }
}
