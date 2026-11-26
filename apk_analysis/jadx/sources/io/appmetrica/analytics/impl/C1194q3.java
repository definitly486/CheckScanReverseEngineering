package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1194q3 {
    public final long a;

    public C1194q3(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C1194q3.class == obj.getClass() && this.a == ((C1194q3) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return defpackage.lg.f(new StringBuilder("CacheControl{lastKnownLocationTtl="), this.a, '}');
    }
}
