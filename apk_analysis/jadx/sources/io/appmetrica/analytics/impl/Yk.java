package io.appmetrica.analytics.impl;

import defpackage.ej0;

/* JADX INFO: loaded from: classes5.dex */
public final class Yk {
    public final long a;
    public final int b;
    public final long c;
    public final boolean d;

    public Yk(long j, int i, long j2, boolean z) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Yk)) {
            return false;
        }
        Yk yk = (Yk) obj;
        return this.a == yk.a && this.b == yk.b && this.c == yk.c && this.d == yk.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + defpackage.vg.b(ej0.b(this.b, Long.hashCode(this.a) * 31, 31), 31, this.c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionEventsDeleteParams(sessionId=");
        sb.append(this.a);
        sb.append(", sessionType=");
        sb.append(this.b);
        sb.append(", maxNumberInSession=");
        sb.append(this.c);
        sb.append(", shouldFormCleanupEvent=");
        return defpackage.sg.d(sb, this.d, ')');
    }
}
