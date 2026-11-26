package io.appmetrica.analytics.idsync.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class D {
    public final z a;

    public D(z zVar) {
        this.a = zVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof D) && this.a == ((D) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Preconditions(networkType=" + this.a + ')';
    }
}
