package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Wm {
    public final long a;

    public Wm(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Wm.class == obj.getClass() && this.a == ((Wm) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return defpackage.lg.f(new StringBuilder("StatSending{disabledReportingInterval="), this.a, '}');
    }
}
