package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import defpackage.vg;

/* JADX INFO: loaded from: classes5.dex */
public final class K {
    public final String a;
    public final long b;
    public final F c;

    public K(String str, long j, F f) {
        this.a = str;
        this.b = j;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K)) {
            return false;
        }
        K k = (K) obj;
        return aa4.e(this.a, k.a) && this.b == k.b && this.c == k.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + vg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "RequestState(type=" + this.a + ", lastAttempt=" + this.b + ", lastAttemptResult=" + this.c + ')';
    }
}
