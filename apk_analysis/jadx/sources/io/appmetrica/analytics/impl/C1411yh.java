package io.appmetrica.analytics.impl;

import defpackage.aa4;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1411yh {
    public final long a;
    public final C1225r9 b;
    public final int c;

    public C1411yh(long j, C1225r9 c1225r9, int i) {
        this.a = j;
        this.b = c1225r9;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1411yh)) {
            return false;
        }
        C1411yh c1411yh = (C1411yh) obj;
        return this.a == c1411yh.a && aa4.e(this.b, c1411yh.b) && this.c == c1411yh.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionCandidate(sessionId=");
        sb.append(this.a);
        sb.append(", sessionDesc=");
        sb.append(this.b);
        sb.append(", sessionTypeCode=");
        return defpackage.rg.h(sb, this.c, ')');
    }
}
