package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class O9 {
    public final long a;

    public O9(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof O9) && this.a == ((O9) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.lg.f(new StringBuilder("ExternalAttributionConfig(collectingInterval="), this.a, ')');
    }
}
